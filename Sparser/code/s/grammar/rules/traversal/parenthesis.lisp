;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1996 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;; 
;;;     File:  "parentheses"
;;;   Module:  "grammar;rules:traversal:"
;;;  Version:  0.5. August 2009

;; initiated 5/1/91, v1.8.4
;; 0.1 (5/15/94) flushed the segment-start hack
;; 0.2 (10/31) handling an interaction with the forest-level parse
;; 0.3 (9/20/95) put in a hook.
;; 0.4 (7/11/96) provided a pretty general routine using the hook
;;     (2/23/07) dropped the guarded check for a missing open.
;; 0.5 (8/31/09) Broke out the capitalized-word hook into its own file so that
;;     it could be gated by *proper-name*. 

(in-package :sparser)

;;;----------
;;; category
;;;----------

(def-category  parentheses :lattice-position :non-terminal)
 ;; Provide a label to use for the span when no hook provides a better one.



;;;-----------------------------------
;;; standard paired punctuation setup
;;;-----------------------------------

(set-traversal-action  word::open-paren  'mark-open-paren)
(set-traversal-action  word::close-paren 'span-parentheses)

(defparameter *pending-open-paren-stack* nil)

(defun mark-open-paren (start-pos end-pos)
  (declare (ignore end-pos))
  (unless *ignore-parentheses*
    (if *position-of-pending-open-paren*
	;; Then we're already inside an open parenthesis
	(then (break "double parens")
	      (push *position-of-pending-open-paren*
		    *pending-open-paren-stack*)
	      (setq *position-of-pending-open-paren* start-pos))
      (else
       (tr :open-paren-seen start-pos)
       (setq *position-of-pending-open-paren* start-pos)))))



(defun span-parentheses (start-pos end-pos)
  (unless *ignore-parentheses*
    (tr :close-paren-seen start-pos)
    
    (let ((open-pos *position-of-pending-open-paren*))
      
      (setq *position-of-pending-open-paren*
	    (if *pending-open-paren-stack*
		(pop *pending-open-paren-stack*)
	      nil))
      
      (unless open-pos
	;(if *break-on-pattern-outside-coverage?*
	;  (break/debug "Can't find matching open paren")
	;  (else
	(tr :matching-open-paren-not-found)
	(return-from span-parentheses nil))
      
      (tr :matching-open-is-at open-pos)
      
      (do-paired-punctuation-interior :parentheses
				      open-pos
				      (chart-position-after open-pos)
				      start-pos
				      end-pos)
      
      (let ((edge (top-edge-starting-at open-pos)))
	;; this will be the edge produced by the paired-punct hook
	
	(edge-interaction-with-quiescence-check edge)
	
	(tr :parenthesis-edge edge)
	edge ))))



;;;--------
;;; traces
;;;--------

(defun trace-parentheses ()
  (setq *trace-parentheses* t))

(defun unTrace-parentheses ()
  (setq *trace-parentheses* nil))


(deftrace :open-paren-seen (start-pos)
  ;; called from Mark-open-paren
  (when *trace-parentheses*
    (trace-msg "Marking the position of an open paren a p~A"
               (pos-token-index start-pos))))

(deftrace :close-paren-seen (start-pos)
  ;; called from Span-parentheses
  (when *trace-parentheses*
    (trace-msg "Close paren seen at p~A" (pos-token-index start-pos))))

(deftrace :matching-open-paren-not-found ()
  ;; called from Span-parentheses
  (when *trace-parentheses*
    (trace-msg "   But the global pointing to its matching open parenthesis~
              ~%   is Nil.  Taking no action")))

(deftrace :matching-open-is-at (open-pos)
  (when *trace-parentheses*
    (trace-msg "   The open parenthesis is at p~A"
               (pos-token-index open-pos))))

(deftrace :parenthesis-edge (edge)
  (when *trace-parentheses*
    (trace-msg "   Formed ~A" edge)))
