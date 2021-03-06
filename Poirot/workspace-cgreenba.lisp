:ld ws/nlp/Poirot/load-nlp-poirot.lisp
(progn 
  (sparser::p "10 days")
  (setq mumble::rpath (sparser::rpath-from-edge (sparser::e# 3)))
  (setq mumble::i (ltml:instantiate-SFL-concept 'ltml::ts@Duration :env (ltml::ns-env 'ltml::ts) :property-value-pairs `(:top@measuredIn ,(ltml:lookup 'ltml::ts@Month) :top@quantity 5))))
(in-package :mumble)
(say i)

:ld ws/nlp/Poirot/load-nlp-poirot.lisp
(in-package :sparser)
(p "January 5")

:ld ws/nlp/Poirot/load-nlp-poirot.lisp
(progn 
  (sparser::p "January 5")
  (setq mumble::rpath (sparser::rpath-from-edge (sparser::e# 3)))
  (setq mumble::i (ltml:instantiate-SFL-concept 'ltml::ts@Date 
		   :env (ltml::ns-env 'ltml::ts) 
		   :property-value-pairs 
		      `(:ts@month 
		           ,(ltml::instantiate-SFL-concept 'ltml::ts@MonthInYear
			      :property-value-pairs
			        `(:ts@referenceMonth ,(ltml:lookup 'ltml::ts@August)))
			:ts@referenceDay
			    ,(ltml::instantiate-SFL-concept 'ltml::ts@DayOfMonth
			       :property-value-pairs 
                                   `(:ts@month ,(ltml:lookup 'ltml::ts@August)
				     :top@eltPosition 10))))))
(in-package :mumble)
(say i)

;; New examples of uttering single words:

:ld ws/nlp/Poirot/load-nlp-poirot.lisp
(in-package :mumble)
(turn-on-tracker)

;; OwlClass examples
(say (ltml::lookup 'ltml::top@Time))
(say (ltml::lookup 'ltml::top@Space))

(say (ltml::lookup 'ltml::ts@ActualYear))
(say (ltml::lookup 'ltml::ts@MonthInYear))
(say (ltml::lookup 'ltml::ts@Date))
(say (ltml::lookup 'ltml::ts@HourInDay))
(say (ltml::lookup 'ltml::ts@MinuteInHour))

(say (ltml::lookup 'ltml::ts@Region))
(say (ltml::lookup 'ltml::ts@Country))
(say (ltml::lookup 'ltml::ts@State))
(say (ltml::lookup 'ltml::ts@City))


;; the rest are Individual instances of OwlClasses...
;; ts@TemporalIndexical examples
(say (ltml::lookup 'ltml::ts@Today))
(say (ltml::lookup 'ltml::ts@Tomorrow))
(say (ltml::lookup 'ltml::ts@Yesterday))

;; ts@MonthOfTheYear examples
(say (ltml::lookup 'ltml::ts@January))
(say (ltml::lookup 'ltml::ts@February))
(say (ltml::lookup 'ltml::ts@March))
(say (ltml::lookup 'ltml::ts@April))
(say (ltml::lookup 'ltml::ts@May))
(say (ltml::lookup 'ltml::ts@June))
(say (ltml::lookup 'ltml::ts@July))
(say (ltml::lookup 'ltml::ts@August))
(say (ltml::lookup 'ltml::ts@September))
(say (ltml::lookup 'ltml::ts@October))
(say (ltml::lookup 'ltml::ts@November))
(say (ltml::lookup 'ltml::ts@December))

;; ts@DayOfWeek examples
(say (ltml::lookup 'ltml::ts@Sunday))
(say (ltml::lookup 'ltml::ts@Monday))
(say (ltml::lookup 'ltml::ts@Tuesday))
(say (ltml::lookup 'ltml::ts@Wednesday))
(say (ltml::lookup 'ltml::ts@Thursday))
(say (ltml::lookup 'ltml::ts@Friday))
(say (ltml::lookup 'ltml::ts@Saturday))

;; ts@AntePostMeridian examples
(say (ltml::lookup 'ltml::ts@am))
(say (ltml::lookup 'ltml::ts@pm))

;; ts@UnitOfTime examples
(say (ltml::lookup 'ltml::ts@Year))
(say (ltml::lookup 'ltml::ts@Month))
(say (ltml::lookup 'ltml::ts@Day))
(say (ltml::lookup 'ltml::ts@Week))
(say (ltml::lookup 'ltml::ts@Hour))
(say (ltml::lookup 'ltml::ts@Minute))
(say (ltml::lookup 'ltml::ts@Second))

;; ts@Country, ts@State & ts@City examples
(say (ltml::lookup 'ltml::ts@Afghanistan))
(say (ltml::lookup 'ltml::ts@Albania))
(say (ltml::lookup 'ltml::ts@Algeria))
(say (ltml::lookup 'ltml::ts@Andorra))
(say (ltml::lookup 'ltml::ts@Angola))
(say (ltml::lookup 'ltml::ts@Antigua-and-Barbuda))
(say (ltml::lookup 'ltml::ts@Argentina))
(say (ltml::lookup 'ltml::ts@Armenia))
(say (ltml::lookup 'ltml::ts@Australia))
(say (ltml::lookup 'ltml::ts@Austria))
(say (ltml::lookup 'ltml::ts@Azerbaijan))
(say (ltml::lookup 'ltml::ts@Bahamas))
(say (ltml::lookup 'ltml::ts@Bahrain))
(say (ltml::lookup 'ltml::ts@Bangladesh))
(say (ltml::lookup 'ltml::ts@Barbados))
(say (ltml::lookup 'ltml::ts@Belarus))
(say (ltml::lookup 'ltml::ts@Belgium))
(say (ltml::lookup 'ltml::ts@Belize))
(say (ltml::lookup 'ltml::ts@Benin))
(say (ltml::lookup 'ltml::ts@Bhutan))
(say (ltml::lookup 'ltml::ts@Bolivia))
(say (ltml::lookup 'ltml::ts@Bosnia-and-Herzegovina))
(say (ltml::lookup 'ltml::ts@Botswana))
(say (ltml::lookup 'ltml::ts@Brazil))
(say (ltml::lookup 'ltml::ts@Brunei))
(say (ltml::lookup 'ltml::ts@Bulgaria))
(say (ltml::lookup 'ltml::ts@Burkina-Faso))
(say (ltml::lookup 'ltml::ts@Burma))
(say (ltml::lookup 'ltml::ts@Burundi))
(say (ltml::lookup 'ltml::ts@Cambodia))
(say (ltml::lookup 'ltml::ts@Cameroon))
(say (ltml::lookup 'ltml::ts@Canada))
(say (ltml::lookup 'ltml::ts@Cape-Verde))
(say (ltml::lookup 'ltml::ts@Central-African-Republic))
(say (ltml::lookup 'ltml::ts@Chad))
(say (ltml::lookup 'ltml::ts@Chile))
(say (ltml::lookup 'ltml::ts@China))
(say (ltml::lookup 'ltml::ts@Colombia))
(say (ltml::lookup 'ltml::ts@Comoros))
(say (ltml::lookup 'ltml::ts@Costa-Rica))
(say (ltml::lookup 'ltml::ts@Cote-d-Ivoire))
(say (ltml::lookup 'ltml::ts@Croatia))
(say (ltml::lookup 'ltml::ts@Cuba))
(say (ltml::lookup 'ltml::ts@Cyprus))
(say (ltml::lookup 'ltml::ts@Czech-Republic))
(say (ltml::lookup 'ltml::ts@Democratic-Republic-of-the-Congo))
(say (ltml::lookup 'ltml::ts@Denmark))
(say (ltml::lookup 'ltml::ts@Djibouti))
(say (ltml::lookup 'ltml::ts@Dominica))
(say (ltml::lookup 'ltml::ts@Dominican-Republic))
(say (ltml::lookup 'ltml::ts@Ecuador))
(say (ltml::lookup 'ltml::ts@Egypt))
(say (ltml::lookup 'ltml::ts@El-Salvador))
(say (ltml::lookup 'ltml::ts@Equatorial-Guinea))
(say (ltml::lookup 'ltml::ts@Eritrea))
(say (ltml::lookup 'ltml::ts@Estonia))
(say (ltml::lookup 'ltml::ts@Ethiopia))
(say (ltml::lookup 'ltml::ts@Federated-States-of-Micronesia-C))
(say (ltml::lookup 'ltml::ts@Fiji))
(say (ltml::lookup 'ltml::ts@Finland))
(say (ltml::lookup 'ltml::ts@France))
(say (ltml::lookup 'ltml::ts@Gabon))
(say (ltml::lookup 'ltml::ts@Gambia))
(say (ltml::lookup 'ltml::ts@Georgia-C))
(say (ltml::lookup 'ltml::ts@Germany))
(say (ltml::lookup 'ltml::ts@Ghana))
(say (ltml::lookup 'ltml::ts@Greece))
(say (ltml::lookup 'ltml::ts@Grenada))
(say (ltml::lookup 'ltml::ts@Guatemala))
(say (ltml::lookup 'ltml::ts@Guinea))
(say (ltml::lookup 'ltml::ts@Guinea-Bissau))
(say (ltml::lookup 'ltml::ts@Guyana))
(say (ltml::lookup 'ltml::ts@Haiti))
(say (ltml::lookup 'ltml::ts@Holy-See))
(say (ltml::lookup 'ltml::ts@Honduras))
(say (ltml::lookup 'ltml::ts@Hungary))
(say (ltml::lookup 'ltml::ts@Iceland))
(say (ltml::lookup 'ltml::ts@India))
(say (ltml::lookup 'ltml::ts@Indonesia))
(say (ltml::lookup 'ltml::ts@Iran))
(say (ltml::lookup 'ltml::ts@Iraq))
(say (ltml::lookup 'ltml::ts@Ireland))
(say (ltml::lookup 'ltml::ts@Israel))
(say (ltml::lookup 'ltml::ts@Italy))
(say (ltml::lookup 'ltml::ts@Jamaica))
(say (ltml::lookup 'ltml::ts@Japan))
(say (ltml::lookup 'ltml::ts@Jordan))
(say (ltml::lookup 'ltml::ts@Kazakhstan))
(say (ltml::lookup 'ltml::ts@Kenya))
(say (ltml::lookup 'ltml::ts@Kiribati))
(say (ltml::lookup 'ltml::ts@Kosovo))
(say (ltml::lookup 'ltml::ts@Kuwait))
(say (ltml::lookup 'ltml::ts@Kyrgyzstan))
(say (ltml::lookup 'ltml::ts@Laos))
(say (ltml::lookup 'ltml::ts@Latvia))
(say (ltml::lookup 'ltml::ts@Lebanon))
(say (ltml::lookup 'ltml::ts@Lesotho))
(say (ltml::lookup 'ltml::ts@Liberia))
(say (ltml::lookup 'ltml::ts@Libya))
(say (ltml::lookup 'ltml::ts@Liechtenstein))
(say (ltml::lookup 'ltml::ts@Lithuania))
(say (ltml::lookup 'ltml::ts@Luxembourg))
(say (ltml::lookup 'ltml::ts@Macedonia))
(say (ltml::lookup 'ltml::ts@Madagascar))
(say (ltml::lookup 'ltml::ts@Malawi))
(say (ltml::lookup 'ltml::ts@Malaysia))
(say (ltml::lookup 'ltml::ts@Maldives))
(say (ltml::lookup 'ltml::ts@Mali))
(say (ltml::lookup 'ltml::ts@Malta))
(say (ltml::lookup 'ltml::ts@Marshall-Islands-C))
(say (ltml::lookup 'ltml::ts@Mauritania))
(say (ltml::lookup 'ltml::ts@Mauritius))
(say (ltml::lookup 'ltml::ts@Mexico))
(say (ltml::lookup 'ltml::ts@Moldova))
(say (ltml::lookup 'ltml::ts@Monaco))
(say (ltml::lookup 'ltml::ts@Mongolia))
(say (ltml::lookup 'ltml::ts@Montenegro))
(say (ltml::lookup 'ltml::ts@Morocco))
(say (ltml::lookup 'ltml::ts@Mozambique))
(say (ltml::lookup 'ltml::ts@Namibia))
(say (ltml::lookup 'ltml::ts@Nauru))
(say (ltml::lookup 'ltml::ts@Nepal))
(say (ltml::lookup 'ltml::ts@Netherlands))
(say (ltml::lookup 'ltml::ts@New-Zealand))
(say (ltml::lookup 'ltml::ts@Nicaragua))
(say (ltml::lookup 'ltml::ts@Niger))
(say (ltml::lookup 'ltml::ts@Nigeria))
(say (ltml::lookup 'ltml::ts@North-Korea))
(say (ltml::lookup 'ltml::ts@Norway))
(say (ltml::lookup 'ltml::ts@Oman))
(say (ltml::lookup 'ltml::ts@Pakistan))
(say (ltml::lookup 'ltml::ts@Palau-C))
(say (ltml::lookup 'ltml::ts@Panama))
(say (ltml::lookup 'ltml::ts@Papua-New-Guinea))
(say (ltml::lookup 'ltml::ts@Paraguay))
(say (ltml::lookup 'ltml::ts@Peru))
(say (ltml::lookup 'ltml::ts@Philippines))
(say (ltml::lookup 'ltml::ts@Poland))
(say (ltml::lookup 'ltml::ts@Portugal))
(say (ltml::lookup 'ltml::ts@Qatar))
(say (ltml::lookup 'ltml::ts@Republic-of-the-Congo))
(say (ltml::lookup 'ltml::ts@Romania))
(say (ltml::lookup 'ltml::ts@Russia))
(say (ltml::lookup 'ltml::ts@Rwanda))
(say (ltml::lookup 'ltml::ts@Saint-Kitts-and-Nevis))
(say (ltml::lookup 'ltml::ts@Saint-Lucia))
(say (ltml::lookup 'ltml::ts@Saint-Vincent-and-the-Grenadines))
(say (ltml::lookup 'ltml::ts@Samoa))
(say (ltml::lookup 'ltml::ts@San-Marino))
(say (ltml::lookup 'ltml::ts@Sao-Tome-and-Principe))
(say (ltml::lookup 'ltml::ts@Saudi-Arabia))
(say (ltml::lookup 'ltml::ts@Senegal))
(say (ltml::lookup 'ltml::ts@Serbia))
(say (ltml::lookup 'ltml::ts@Seychelles))
(say (ltml::lookup 'ltml::ts@Sierra-Leone))
(say (ltml::lookup 'ltml::ts@Singapore))
(say (ltml::lookup 'ltml::ts@Slovakia))
(say (ltml::lookup 'ltml::ts@Slovenia))
(say (ltml::lookup 'ltml::ts@Solomon-Islands))
(say (ltml::lookup 'ltml::ts@Somalia))
(say (ltml::lookup 'ltml::ts@South-Africa))
(say (ltml::lookup 'ltml::ts@South-Korea))
(say (ltml::lookup 'ltml::ts@Spain))
(say (ltml::lookup 'ltml::ts@Sri-Lanka))
(say (ltml::lookup 'ltml::ts@Sudan))
(say (ltml::lookup 'ltml::ts@Suriname))
(say (ltml::lookup 'ltml::ts@Swaziland))
(say (ltml::lookup 'ltml::ts@Sweden))
(say (ltml::lookup 'ltml::ts@Switzerland))
(say (ltml::lookup 'ltml::ts@Syria))
(say (ltml::lookup 'ltml::ts@Taiwan))
(say (ltml::lookup 'ltml::ts@Tajikistan))
(say (ltml::lookup 'ltml::ts@Tanzania))
(say (ltml::lookup 'ltml::ts@Thailand))
(say (ltml::lookup 'ltml::ts@Timor-Leste))
(say (ltml::lookup 'ltml::ts@Togo))
(say (ltml::lookup 'ltml::ts@Tonga))
(say (ltml::lookup 'ltml::ts@Trinidad-and-Tobago))
(say (ltml::lookup 'ltml::ts@Tunisia))
(say (ltml::lookup 'ltml::ts@Turkey))
(say (ltml::lookup 'ltml::ts@Turkmenistan))
(say (ltml::lookup 'ltml::ts@Tuvalu))
(say (ltml::lookup 'ltml::ts@Uganda))
(say (ltml::lookup 'ltml::ts@Ukraine))
(say (ltml::lookup 'ltml::ts@United-Arab-Emirates))
(say (ltml::lookup 'ltml::ts@United-Kingdom))
(say (ltml::lookup 'ltml::ts@United-States))
(say (ltml::lookup 'ltml::ts@Uruguay))
(say (ltml::lookup 'ltml::ts@Uzbekistan))
(say (ltml::lookup 'ltml::ts@Vanuatu))
(say (ltml::lookup 'ltml::ts@Venezuela))
(say (ltml::lookup 'ltml::ts@Vietnam))
(say (ltml::lookup 'ltml::ts@Yemen))
(say (ltml::lookup 'ltml::ts@Zambia))
(say (ltml::lookup 'ltml::ts@Zimbabwe))

(say (ltml::lookup 'ltml::ts@Alabama))
(say (ltml::lookup 'ltml::ts@Alaska))
(say (ltml::lookup 'ltml::ts@Arizona))
(say (ltml::lookup 'ltml::ts@Arkansas))
(say (ltml::lookup 'ltml::ts@California))
(say (ltml::lookup 'ltml::ts@Colorado))
(say (ltml::lookup 'ltml::ts@Connecticut))
(say (ltml::lookup 'ltml::ts@Delaware))
(say (ltml::lookup 'ltml::ts@Florida))
(say (ltml::lookup 'ltml::ts@Georgia))
(say (ltml::lookup 'ltml::ts@Hawaii))
(say (ltml::lookup 'ltml::ts@Idaho))
(say (ltml::lookup 'ltml::ts@Illinois))
(say (ltml::lookup 'ltml::ts@Indiana))
(say (ltml::lookup 'ltml::ts@Iowa))
(say (ltml::lookup 'ltml::ts@Kansas))
(say (ltml::lookup 'ltml::ts@Kentucky))
(say (ltml::lookup 'ltml::ts@Louisiana))
(say (ltml::lookup 'ltml::ts@Maine))
(say (ltml::lookup 'ltml::ts@Maryland))
(say (ltml::lookup 'ltml::ts@Massachusetts))
(say (ltml::lookup 'ltml::ts@Michigan))
(say (ltml::lookup 'ltml::ts@Minnesota))
(say (ltml::lookup 'ltml::ts@Mississippi))
(say (ltml::lookup 'ltml::ts@Missouri))
(say (ltml::lookup 'ltml::ts@Montana))
(say (ltml::lookup 'ltml::ts@Nebraska))
(say (ltml::lookup 'ltml::ts@Nevada))
(say (ltml::lookup 'ltml::ts@New-Hampshire))
(say (ltml::lookup 'ltml::ts@New-Jersey))
(say (ltml::lookup 'ltml::ts@New-Mexico))
(say (ltml::lookup 'ltml::ts@New-York))
(say (ltml::lookup 'ltml::ts@North-Carolina))
(say (ltml::lookup 'ltml::ts@North-Dakota))
(say (ltml::lookup 'ltml::ts@Ohio))
(say (ltml::lookup 'ltml::ts@Oklahoma))
(say (ltml::lookup 'ltml::ts@Oregon))
(say (ltml::lookup 'ltml::ts@Pennsylvania))
(say (ltml::lookup 'ltml::ts@Rhode-Island))
(say (ltml::lookup 'ltml::ts@South-Carolina))
(say (ltml::lookup 'ltml::ts@South-Dakota))
(say (ltml::lookup 'ltml::ts@Tennessee))
(say (ltml::lookup 'ltml::ts@Texas))
(say (ltml::lookup 'ltml::ts@Utah))
(say (ltml::lookup 'ltml::ts@Vermont))
(say (ltml::lookup 'ltml::ts@Virginia))
(say (ltml::lookup 'ltml::ts@Washington))
(say (ltml::lookup 'ltml::ts@West-Virginia))
(say (ltml::lookup 'ltml::ts@Wisconsin))
(say (ltml::lookup 'ltml::ts@Wyoming))
(say (ltml::lookup 'ltml::ts@American-Samoa))
(say (ltml::lookup 'ltml::ts@District-of-Columbia))
(say (ltml::lookup 'ltml::ts@Federated-States-of-Micronesia))
(say (ltml::lookup 'ltml::ts@Guam))
(say (ltml::lookup 'ltml::ts@Marshall-Islands))
(say (ltml::lookup 'ltml::ts@Northern-Mariana-Islands))
(say (ltml::lookup 'ltml::ts@Palau))
(say (ltml::lookup 'ltml::ts@Puerto-Rico))
(say (ltml::lookup 'ltml::ts@Virgin-Islands))
(say (ltml::lookup 'ltml::ts@Armed-Forces-Africa))
(say (ltml::lookup 'ltml::ts@Armed-Forces-Americas))
(say (ltml::lookup 'ltml::ts@Armed-Forces-Canada))
(say (ltml::lookup 'ltml::ts@Armed-Forces-Europe))
(say (ltml::lookup 'ltml::ts@Armed-Forces-Middle-East))
(say (ltml::lookup 'ltml::ts@Armed-Forces-Pacific))

(say (ltml::lookup 'ltml::ts@Decatur)) ;; this is the one city so far

;; broken examples
;; (say (ltml::lookup 'ltml::ts@After))
;; Doesn't work because its realization mapping in time.ltml is :preposition,
;; when only :kind and :interval seem to work. If I change :preposition to :kind, it
;; works fine. In nlp/Poirot/resources.lisp, in make-one-word-lexicalized-phrase,
;; there is an "unless" for :preposition, so :preposition will get nil here. In
;; phrase-given-mapping-key in the same file, :preposition gets the name nil, while
;; :kind gets 'common-noun. If I circumvent the "unless" and give 'common-noun for
;; :preposition instead, it works. Obviously, 'common-noun doesn't make sense for
;; :preposition. I found prepositional-phrase in Mumble/grammar/phrases.lisp, but I
;; can't use that here since it assumes two parameters and I've only got one. I know
;; it's kind of weird to think of uttering a preposition on its own, but "After." is
;; a perfectly legitimate answer to the question "Do you want to get dinner before
;; or after the movie?" Maybe I need something in special-forms.lisp too?
