(begin (define (ZED* ZEDnumber1 ZEDnumber2) (cond (#t (* ZEDnumber1 ZEDnumber2)) (else err))) (define (ZED+ ZEDnumber1 ZEDnumber2) (cond (#t (+ ZEDnumber1 ZEDnumber2)) (else err))) (define (ZED- ZEDnumber1 ZEDnumber2) (cond (#t (- ZEDnumber1 ZEDnumbe2)) (else err))) (define (ZED/ ZEDnumber1 ZEDnumber2) (cond (#t (/ ZEDnumber1 ZEDnumber2)) (else err))) (define (ZED= value1 value2) (cond (#t (eqv? value1 value2)) (else err))) (define (ZEDadd-between! item list collect) (cond ((null? list) collect) ((null? (cdr list)) (cons (car list) collect)) (#t (ZEDadd-between! item (cdr list) (cons item (cons (car list) collect)))) (else err))) (define (ZEDadd-between item list) (cond (#t (reverse (ZEDadd-between! item list (quote ())))) (else err))) (define (ZEDadd-between-ra list item) (cond (#t (reverse (ZEDadd-between! item list (quote ())))) (else err))) (define (ZEDaddBetweenTwo ZEDitem ZEDstack) (cond ((ZEDnull? ZEDstack) (quote ())) ((ZEDnull? (ZEDpop (ZEDpop ZEDstack))) ZEDstack) (#t (ZEDpush (ZEDtop ZEDstack) (ZEDpush (ZEDtop (ZEDpop ZEDstack)) (ZEDpush ZEDitem (ZEDaddBetweenTwo ZEDitem (ZEDpop (ZEDpop ZEDstack))))))) (else err))) (define (ZEDalpha) (cond (#t (ZEDwrite-all (ZEDrd (quote ()) append (ZEDrd (quote ()) append (ZEDnewlines (ZEDby-four (ZEDfunction-sort (ZEDsentences (ZEDleading-newline (ZEDspace-newline (ZEDtab-replace (ZEDnewline-space-tab-repeats (ZEDnewline-space (ZEDfilter ZEDnot-return? (ZEDreplace-trailing-white-space (ZEDread-all)))))))))))))))) (else err))) (define (ZEDapplication? expression) (cond (#t (and (not (null? expression)) (pair? (car expression)) (null? (cdar expression)))) (else err))) (define (ZEDarity arity-hash function) (cond (#t (cdr (assoc function arity-hash))) (else err))) (define (ZEDarity-hash! clause) (cond (#t (cons (ZEDclause-name clause) (ZEDclause-arity clause))) (else err))) (define (ZEDarity-hash program) (cond (#t (append (map ZEDarity-hash! program) (append (list (cons (quote ZED1) 1) (cons (quote ZED!) 1) (cons (quote ZED001) 1) (cons (quote or) 2) (cons (quote and) 2) (cons (quote begin) 2) (cons (quote ZEDc) 2) (cons (quote quote) 1)) (list (cons (quote ZED002) 2) (cons (quote ZED003) 3) (cons (quote ZED004) 4) (cons (quote ZED005) 5) (cons (quote ZED006) 6) (cons (quote ZED007) 7) (cons (quote ZED008) 8) (cons (quote ZED009) 9) (cons (quote ZED010) 10) (cons (quote ZED011) 11) (cons (quote ZED012) 12) (cons (quote ZED013) 13) (cons (quote ZED014) 14) (cons (quote ZED015) 15) (cons (quote ZED016) 16) (cons (quote ZED017) 17) (cons (quote ZED018) 18) (cons (quote ZED019) 19) (cons (quote ZED020) 20) (cons (quote ZED021) 21) (cons (quote ZED022) 22) (cons (quote ZED023) 23) (cons (quote ZED024) 24) (cons (quote ZED025) 25) (cons (quote ZED026) 26) (cons (quote ZED027) 27) (cons (quote ZED028) 28) (cons (quote ZED029) 29) (cons (quote ZED030) 30) (cons (quote ZED031) 31) (cons (quote ZED032) 32) (cons (quote ZED033) 33) (cons (quote ZED034) 34) (cons (quote ZED035) 35) (cons (quote ZED036) 36) (cons (quote ZED037) 37) (cons (quote ZED038) 38) (cons (quote ZED039) 39) (cons (quote ZED040) 40) (cons (quote ZED041) 41) (cons (quote ZED042) 42) (cons (quote ZED043) 43) (cons (quote ZED044) 44) (cons (quote ZED045) 45) (cons (quote ZED046) 46) (cons (quote ZED047) 47) (cons (quote ZED048) 48) (cons (quote ZED049) 49) (cons (quote ZED050) 50) (cons (quote ZED051) 51) (cons (quote ZED052) 52) (cons (quote ZED053) 53) (cons (quote ZED054) 54) (cons (quote ZED055) 55) (cons (quote ZED056) 56) (cons (quote ZED057) 57) (cons (quote ZED058) 58) (cons (quote ZED059) 59) (cons (quote ZED060) 60) (cons (quote ZED061) 61) (cons (quote ZED062) 62) (cons (quote ZED063) 63) (cons (quote ZED064) 64) (cons (quote ZED065) 65) (cons (quote ZED066) 66) (cons (quote ZED067) 67) (cons (quote ZED068) 68) (cons (quote ZED069) 69) (cons (quote ZED070) 70) (cons (quote ZED071) 71) (cons (quote ZED072) 72) (cons (quote ZED073) 73) (cons (quote ZED074) 74) (cons (quote ZED075) 75) (cons (quote ZED076) 76) (cons (quote ZED077) 77) (cons (quote ZED078) 78) (cons (quote ZED079) 79) (cons (quote ZED080) 80) (cons (quote ZED081) 81) (cons (quote ZED082) 82) (cons (quote ZED083) 83) (cons (quote ZED084) 84) (cons (quote ZED085) 85) (cons (quote ZED086) 86) (cons (quote ZED087) 87) (cons (quote ZED088) 88) (cons (quote ZED089) 89) (cons (quote ZED090) 90) (cons (quote ZED091) 91) (cons (quote ZED092) 92) (cons (quote ZED093) 93) (cons (quote ZED094) 94) (cons (quote ZED095) 95) (cons (quote ZED096) 96) (cons (quote ZED097) 97) (cons (quote ZED098) 98) (cons (quote ZED099) 99))))) (else err))) (define (ZEDby-four! sentences collect) (cond ((null? sentences) collect) (#t (ZEDby-four! (cddddr sentences) (cons (list (car sentences) (cadr sentences) (caddr sentences) (cadddr sentences)) collect))) (else err))) (define (ZEDby-four sentences) (cond (#t (reverse (ZEDby-four! sentences (quote ())))) (else err))) (define (ZEDby-three! sentences collect) (cond ((null? sentences) collect) (#t (ZEDby-three! (cdddr sentences) (cons (list (car sentences) (cadr sentences) (caddr sentences)) collect))) (else err))) (define (ZEDby-three sentences) (cond (#t (reverse (ZEDby-three! sentences (quote ())))) (else err))) (define (ZEDcallingConvention ZEDexpression) (cond ((list? ZEDexpression) (ZEDcallingConvention1 (map ZEDcallingConvention ZEDexpression))) (#t (ZEDcallingConvention2 ZEDexpression)) (else err))) (define (ZEDcallingConvention1 ZEDstrings) (cond (#t (apply string-append (ZEDpush (ZEDtop ZEDstrings) (ZEDpush "(" (append (ZEDadd-between "," (ZEDpop ZEDstrings)) (list ")")))))) (else err))) (define (ZEDcallingConvention2 ZEDpart) (cond ((boolean? ZEDpart) (ZEDintegerBoolean ZEDpart)) ((char? ZEDpart) (number->string (char->integer ZEDpart))) (#t (ZEDcallingConvention21 ZEDpart (open-output-string))) (else err))) (define (ZEDcallingConvention21 ZEDpart ZEDoutput-string) (cond (#t (begin (write ZEDpart ZEDoutput-string) (ZEDcallingConvention211 ZEDoutput-string (get-output-string ZEDoutput-string)))) (else err))) (define (ZEDcallingConvention211 ZEDoutput-string ZEDstring) (cond (#t (begin (close-output-port ZEDoutput-string) ZEDstring)) (else err))) (define (ZEDcharacter-less? character1 character2) (cond (#t (< (char->integer character1) (char->integer character2))) (else err))) (define (ZEDclause-arguments clause) (cond (#t (cadr clause)) (else err))) (define (ZEDclause-arguments-agree clause1 clause2) (cond ((equal? (ZEDclause-arguments clause1) (ZEDclause-arguments clause2)) (ZEDclause-arguments clause1)) (else err))) (define (ZEDclause-arity clause) (cond (#t (/ (- (length (ZEDclause-arguments clause)) 1) 2)) (else err))) (define (ZEDclause-body clause) (cond (#t (cddr clause)) (else err))) (define (ZEDclause-less? clause1 clause2) (cond (#t (ZEDsentence-less? (car clause1) (car clause2))) (else err))) (define (ZEDclause-name clause) (cond (#t (car clause)) (else err))) (define (ZEDclause-name-agree clause1 clause2) (cond ((eq? (ZEDclause-name clause1) (ZEDclause-name clause2)) (ZEDclause-name clause1)) (else err))) (define (ZEDcombine-all! program collect) (cond ((null? program) collect) ((null? (cdr program)) (cons (car program) collect)) ((eq? (ZEDclause-name (car program)) (ZEDclause-name (cadr program))) (ZEDcombine-all! (ZEDcombine-head-clauses program) collect)) (#t (ZEDcombine-all! (cdr program) (cons (car program) collect))) (else err))) (define (ZEDcombine-all program) (cond (#t (reverse (ZEDcombine-all! program (quote ())))) (else err))) (define (ZEDcombine-clauses clause1 clause2) (cond (#t (cons (ZEDclause-name-agree clause1 clause2) (cons (ZEDclause-arguments-agree clause1 clause2) (append (ZEDclause-body clause1) (ZEDclause-body clause2))))) (else err))) (define (ZEDcombine-head-clauses program) (cond (#t (cons (ZEDcombine-clauses (car program) (cadr program)) (cddr program))) (else err))) (define (ZEDcombine-program-clauses program) (cond (#t (ZEDcombine-all (ZEDready-program program))) (else err))) (define (ZEDcomp!) (cond (#t (ZEDcomp!a (ZEDcombine-program-clauses (ZEDby-three (ZEDread-sentences (ZEDdiscard-comments (ZEDfunction-sort (ZEDsentences (ZEDleading-newline (ZEDspace-newline (ZEDtab-replace (ZEDnewline-space-tab-repeats (ZEDnewline-space (ZEDfilter ZEDnot-return? (ZEDreplace-trailing-white-space (ZEDread-all)))))))))))))))) (else err))) (define (ZEDcomp!a combined) (cond (#t (ZEDcomp!aa (ZEDprogramize combined (ZEDarity-hash combined)))) (else err))) (define (ZEDcomp!aa programized) (cond (#t (ZEDcomp!aaa programized (open-output-string))) (else err))) (define (ZEDcomp!aaa programized output-string) (cond (#t (begin (write programized output-string) (ZEDcomp!aaaa (ZEDpop (read (open-input-string (get-output-string output-string))))))) (else err))) (define (ZEDcomp!aaaa program) (cond (#t (begin (for-each ZEDprintSignature program) (for-each ZEDprintFunction program))) (else err))) (define (ZEDcomp) (cond (#t (ZEDcomp!)) (else err))) (define (ZEDcondefy! expressions collect) (cond ((null? expressions) collect) (#t (ZEDcondefy! (cddr expressions) (cons (append (car expressions) (cadr expressions)) collect))) (else err))) (define (ZEDcondefy expressions) (cond (#t (reverse (ZEDcondefy! expressions (quote ())))) (else err))) (define (ZEDcons ZEDvalue1 ZEDvalue2) (cond (#t (cons ZEDvalue1 ZEDvalue2)) (else err))) (define (ZEDcount ZEDnumber) (cond (#t (cons (delay ZEDnumber) (delay (ZEDcount (ZED+ ZEDnumber 1))))) (else err))) (define (ZEDcount-by ZEDstep ZEDnumber) (cond (#t (cons (delay ZEDnumber) (delay (ZEDcount-by ZEDstep (ZED+ ZEDnumber ZEDstep))))) (else err))) (define (ZEDdelay-wrap expression) (cond (#t (list (quote delay) expression)) (else err))) (define (ZEDdigit? character) (cond (#t (or (eqv? #\0 character) (eqv? #\1 character) (eqv? #\2 character) (eqv? #\3 character) (eqv? #\4 character) (eqv? #\5 character) (eqv? #\6 character) (eqv? #\7 character) (eqv? #\8 character) (eqv? #\9 character))) (else err))) (define (ZEDdiscard-comments! program collect) (cond ((null? program) collect) (#t (ZEDdiscard-comments! (cddddr program) (cons (cadddr program) (cons (caddr program) (cons (car program) collect))))) (else err))) (define (ZEDdiscard-comments program) (cond (#t (reverse (ZEDdiscard-comments! program (quote ())))) (else err))) (define (ZEDdr! value) (cond ((pair? value) (ZEDmp ZEDdr! (ZEDfirst 64 value))) (#t value) (else err))) (define (ZEDdr value) (cond (#t (begin (display (ZEDpr (ZEDdr! value))) (newline) (newline) value)) (else err))) (define (ZEDdrr value) (cond (#t (begin (display (ZEDpr value)) (newline) (newline) value)) (else err))) (define (ZEDfalse? noun-list) (cond (#t (equal? noun-list (list #\# #\f #\a #\l #\s #\e))) (else err))) (define (ZEDfi function list) (cond ((null? list) (quote ())) ((function (if (promise? (car list)) (force (car list)) (car list))) (cons (delay (if (promise? (car list)) (force (car list)) (car list))) (delay (ZEDfi function (if (promise? (cdr list)) (force (cdr list)) (cdr list)))))) (#t (ZEDfi function (if (promise? (cdr list)) (force (cdr list)) (cdr list)))) (else err))) (define (ZEDfilter! predicate list collect) (cond ((null? list) collect) ((predicate (car list)) (ZEDfilter! predicate (cdr list) (cons (car list) collect))) (#t (ZEDfilter! predicate (cdr list) collect)) (else err))) (define (ZEDfilter predicate list) (cond (#t (reverse (ZEDfilter! predicate list (quote ())))) (else err))) (define (ZEDfirst! integer list collect) (cond ((or (zero? integer) (null? list)) (reverse collect)) ((not (pair? list)) (reverse (cons list collect))) ((> integer 0) (ZEDfirst! (- integer 1) (if (promise? (cdr list)) (force (cdr list)) (cdr list)) (cons (if (promise? (car list)) (force (car list)) (car list)) collect))) (else err))) (define (ZEDfirst integer list) (cond ((not (pair? list)) list) (#t (ZEDfirst! integer list (quote ()))) (else err))) (define (ZEDflatten! ZEDlist ZEDsub-list-found? ZEDcollect) (cond ((and (ZEDnull? ZEDlist) (ZEDnot ZEDsub-list-found?)) (ZEDreverse ZEDcollect)) ((ZEDnull? ZEDlist) (ZEDflatten! (ZEDreverse ZEDcollect) #f (quote ()))) ((ZEDnot (ZEDpair? ZEDlist)) (ZEDflatten! (quote ()) ZEDsub-list-found? (ZEDcons ZEDlist ZEDcollect))) ((ZEDpair? (if (promise? (car ZEDlist)) (force (car ZEDlist)) (car ZEDlist))) (ZEDflatten! (if (promise? (cdr ZEDlist)) (force (cdr ZEDlist)) (cdr ZEDlist)) #t (ZEDcons (if (promise? (cdr (if (promise? (car ZEDlist)) (force (car ZEDlist)) (car ZEDlist)))) (force (cdr (if (promise? (car ZEDlist)) (force (car ZEDlist)) (car ZEDlist)))) (cdr (if (promise? (car ZEDlist)) (force (car ZEDlist)) (car ZEDlist)))) (ZEDcons (if (promise? (car (if (promise? (car ZEDlist)) (force (car ZEDlist)) (car ZEDlist)))) (force (car (if (promise? (car ZEDlist)) (force (car ZEDlist)) (car ZEDlist)))) (car (if (promise? (car ZEDlist)) (force (car ZEDlist)) (car ZEDlist)))) ZEDcollect)))) ((ZEDnull? (if (promise? (car ZEDlist)) (force (car ZEDlist)) (car ZEDlist))) (ZEDflatten! (if (promise? (cdr ZEDlist)) (force (cdr ZEDlist)) (cdr ZEDlist)) ZEDsub-list-found? ZEDcollect)) (#t (ZEDflatten! (if (promise? (cdr ZEDlist)) (force (cdr ZEDlist)) (cdr ZEDlist)) ZEDsub-list-found? (ZEDcons (if (promise? (car ZEDlist)) (force (car ZEDlist)) (car ZEDlist)) ZEDcollect))) (else err))) (define (ZEDflatten ZEDlist) (cond (#t (ZEDflatten! ZEDlist #f (quote ()))) (else err))) (define (ZEDfor-each ZEDeffect ZEDlist) (cond (#t (for-each ZEDeffect ZEDlist)) (else err))) (define (ZEDfunction expression) (cond (#t (caar expression)) (else err))) (define (ZEDfunction-sort sentences) (cond (#t (ZEDrd (quote ()) append (ZEDsort ZEDclause-less? (ZEDby-four sentences)))) (else err))) (define (ZEDfunctionize clause arity-hash) (cond (#t (list (quote define) (cons (ZEDclause-name clause) (ZEDclause-arguments clause)) (cons (quote cond) (append (ZEDcondefy (ZEDmap-with ZEDschemefy (ZEDclause-body clause) arity-hash)) (list (list (quote else) (quote err))))))) (else err))) (define (ZEDgather-count?! candidate) (cond (#t (and (= 6 (length candidate)) (eqv? #\Z (car candidate)) (eqv? #\E (cadr candidate)) (eqv? #\D (caddr candidate)) (eqv? #\0 (cadddr candidate)) (ZEDdigit? (car (cddddr candidate))) (ZEDdigit? (cadr (cddddr candidate))))) (else err))) (define (ZEDgather-count? symbol) (cond (#t (ZEDgather-count?! (string->list (symbol->string symbol)))) (else err))) (define (ZEDgather-noun sentence) (cond ((null? sentence) (quote ())) ((eqv? #\space (car sentence)) (quote ())) (#t (cons (car sentence) (ZEDgather-noun (cdr sentence)))) (else err))) (define (ZEDgather-verb sentence) (cond ((eqv? #\) (car sentence)) (quote ())) (#t (cons (car sentence) (ZEDgather-verb (cdr sentence)))) (else err))) (define (ZEDgr garbage value) (cond (#t (begin (ZEDdr garbage) value)) (else err))) (define (ZEDgrr garbage value) (cond (#t (begin (ZEDdrr garbage) value)) (else err))) (define (ZEDhalve ZEDnumber) (cond (#t (ZED/ ZEDnumber 2)) (else err))) (define (ZEDintegerBoolean ZEDbool) (cond (ZEDbool "1") (#t "0") (else err))) (define (ZEDleading-newline program) (cond ((null? program) (quote ())) ((eqv? #\newline (car program)) (cdr program)) (#t program) (else err))) (define (ZEDliteral? literal-list) (cond (#t (eqv? #\" (car literal-list))) (else err))) (define (ZEDmake-ZED ZED-list) (cond ((equal? ZED-list (list #\e #\r #\r)) "'err") ((equal? ZED-list (list #\n #\i #\l)) "'()") ((equal? ZED-list (list #\a #\n #\d)) "and") ((equal? ZED-list (list #\o #\r)) "or") ((equal? ZED-list (list #\q #\u #\o #\t #\e)) "quote") ((equal? ZED-list (list #\s #\e)) "begin") (#t (list->string (append (list #\Z #\E #\D) ZED-list))) (else err))) (define (ZEDmake-character noun-list) (cond (#t (list->string (cons #\# (cons #\\ (cdr noun-list))))) (else err))) (define (ZEDmake-exact exact-list) (cond (#t (list->string (append (list #\# #\e) exact-list))) (else err))) (define (ZEDmake-literal literal-list) (cond (#t (list->string (cdr (reverse (cdr (reverse literal-list)))))) (else err))) (define (ZEDmake-number-character noun-list) (cond (#t (list->string (list #\# #\\ (integer->char (string->number (list->string (cddr noun-list))))))) (else err))) (define (ZEDmakeFunctionBody ZEDarms) (cond (#t (apply string-append (ZEDpush "{" (ZEDpush "return" (ZEDpush (ZEDrd "0" ZEDternaryCombiner ZEDarms) (list ";}")))))) (else err))) (define (ZEDmakeFunctionSignature ZEDstack) (cond (#t (ZEDmakeFunctionSignature1 (ZEDzip-function-signature ZEDstack))) (else err))) (define (ZEDmakeFunctionSignature1 ZEDstack) (cond (#t (ZEDpush (ZEDtop ZEDstack) (ZEDpush #\space (ZEDpush (ZEDtop (ZEDpop ZEDstack)) (ZEDpush #\( (append (ZEDadd-between #\space (ZEDaddBetweenTwo #\, (ZEDpop (ZEDpop ZEDstack)))) (list #\)))))))) (else err))) (define (ZEDmap-with! function list extra collect) (cond ((null? list) collect) (#t (ZEDmap-with! function (cdr list) extra (cons (function (car list) extra) collect))) (else err))) (define (ZEDmap-with function list extra) (cond (#t (reverse (ZEDmap-with! function list extra (quote ())))) (else err))) (define (ZEDmerge! comparator list1 list2 collect) (cond ((null? list2) (append (reverse collect) list1)) ((null? list1) (append (reverse collect) list2)) ((comparator (car list2) (car list1)) (ZEDmerge! comparator list1 (cdr list2) (cons (car list2) collect))) (#t (ZEDmerge! comparator (cdr list1) list2 (cons (car list1) collect))) (else err))) (define (ZEDmerge comparator list1 list2) (cond (#t (ZEDmerge! comparator list1 list2 (quote ()))) (else err))) (define (ZEDmp function list) (cond ((null? list) (quote ())) ((pair? list) (cons (delay (function (if (promise? (car list)) (force (car list)) (car list)))) (delay (ZEDmp function (if (promise? (cdr list)) (force (cdr list)) (cdr list)))))) (#t (function list)) (else err))) (define (ZEDnewline-space! program) (cond (#t (cons #\newline (ZEDnewline-space!a program))) (else err))) (define (ZEDnewline-space!a program) (cond (#t (ZEDnewline-space!aa program (reverse (ZEDnewline-space!ab program (quote ()))))) (else err))) (define (ZEDnewline-space!aa program transformed) (cond ((equal? program transformed) program) (#t (ZEDnewline-space!a transformed)) (else err))) (define (ZEDnewline-space!ab program collect) (cond ((null? program) collect) ((null? (cdr program)) (cons (car program) collect)) ((and (eqv? #\newline (car program)) (or (eqv? #\space (cadr program)) (eqv? #\ht (cadr program)))) (ZEDnewline-space!ab (cdr program) collect)) (#t (ZEDnewline-space!ab (cdr program) (cons (car program) collect))) (else err))) (define (ZEDnewline-space program) (cond (#t (ZEDnewline-space! program)) (else err))) (define (ZEDnewline-space-tab-repeats! program collect) (cond ((or (null? program) (null? (cdr program))) (append program collect)) ((and (eqv? #\newline (car program)) (eqv? #\newline (cadr program))) (ZEDnewline-space-tab-repeats! (cdr program) collect)) ((and (or (eqv? #\space (car program)) (eqv? #\ht (car program))) (or (eqv? #\space (cadr program)) (eqv? #\ht (cadr program)))) (ZEDnewline-space-tab-repeats! (cdr program) collect)) (#t (ZEDnewline-space-tab-repeats! (cdr program) (cons (car program) collect))) (else err))) (define (ZEDnewline-space-tab-repeats program) (cond (#t (reverse (ZEDnewline-space-tab-repeats! program (quote ())))) (else err))) (define (ZEDnewlines clauses) (cond (#t (ZEDadd-between-ra (ZEDmap-with ZEDadd-between-ra clauses (list #\newline)) (list (list #\newline #\newline)))) (else err))) (define (ZEDnormal-character? noun-list) (cond (#t (eqv? (car noun-list) #\#)) (else err))) (define (ZEDnot ZEDvalue) (cond (#t (not ZEDvalue)) (else err))) (define (ZEDnot-return? character) (cond (#t (not (eqv? #\cr character))) (else err))) (define (ZEDnoun! noun-list number?) (cond (number? (ZEDmake-exact noun-list)) ((ZEDliteral? noun-list) (ZEDmake-literal noun-list)) ((ZEDtrue? noun-list) "#t") ((ZEDfalse? noun-list) "#f") ((ZEDnumber-character? noun-list) (ZEDmake-number-character noun-list)) ((ZEDnormal-character? noun-list) (ZEDmake-character noun-list)) (#t (ZEDmake-ZED noun-list)) (else err))) (define (ZEDnoun noun-list) (cond (#t (ZEDnoun! noun-list (string->number (list->string noun-list)))) (else err))) (define (ZEDnull? ZEDvalue) (cond (#t (null? ZEDvalue)) (else err))) (define (ZEDnumber-character? noun-list) (cond (#t (and (eqv? (car noun-list) #\#) (eqv? (cadr noun-list) #\0) (not (null? (cddr noun-list))))) (else err))) (define (ZEDpair? ZEDvalue) (cond (#t (pair? ZEDvalue)) (else err))) (define (ZEDpop stack) (cond (#t (cdr stack)) (else err))) (define (ZEDpr! value output-string) (cond (#t (begin (display (ZEDpr!a value (quote ())) output-string) (ZEDpr!b output-string (get-output-string output-string)))) (else err))) (define (ZEDpr!a value collect) (cond ((char? value) (ZEDpr!aa (list->string (list #\# value)) collect)) ((string? value) (ZEDpr!aa (string-append "\"" value "\"") collect)) ((symbol? value) (ZEDpr!aa (symbol->string value) collect)) ((number? value) (ZEDpr!aa (number->string value) collect)) ((and (boolean? value) value) (ZEDpr!aa "#true" collect)) ((boolean? value) (ZEDpr!aa "#false" collect)) ((null? value) (reverse collect)) (#t (ZEDpr!a (if (promise? (cdr value)) (force (cdr value)) (cdr value)) (cons (ZEDpr!a (if (promise? (car value)) (force (car value)) (car value)) (quote ())) collect))) (else err))) (define (ZEDpr!aa string collect) (cond ((null? collect) string) (#t (reverse (cons string (cons "." collect)))) (else err))) (define (ZEDpr!b output-string value) (cond (#t (begin (close-output-port output-string) value)) (else err))) (define (ZEDpr value) (cond (#t (ZEDpr! value (open-output-string))) (else err))) (define (ZEDprintFunction ZEDfunction) (cond (#t (begin (for-each display (ZEDmakeFunctionSignature (ZEDtop (ZEDpop ZEDfunction)))) (display (ZEDmakeFunctionBody (ZEDpop (ZEDreverse (ZEDpop (ZEDreverse (ZEDtop (ZEDpop (ZEDpop ZEDfunction))))))))))) (else err))) (define (ZEDprintSignature function) (cond (#t (begin (for-each display (ZEDmakeFunctionSignature (ZEDtop (ZEDpop function)))) (display #\;))) (else err))) (define (ZEDprogramize program arity-hash) (cond (#t (cons (quote begin) (ZEDmap-with ZEDfunctionize program arity-hash))) (else err))) (define (ZEDpush object stack) (cond (#t (cons object stack)) (else err))) (define (ZEDrd! function list) (cond ((null? (if (promise? (cdr list)) (force (cdr list)) (cdr list))) (if (promise? (car list)) (force (car list)) (car list))) (#t (ZEDrd! function (cons (function (if (promise? (car (if (promise? (cdr list)) (force (cdr list)) (cdr list)))) (force (car (if (promise? (cdr list)) (force (cdr list)) (cdr list)))) (car (if (promise? (cdr list)) (force (cdr list)) (cdr list)))) (if (promise? (car list)) (force (car list)) (car list))) (if (promise? (cdr (if (promise? (cdr list)) (force (cdr list)) (cdr list)))) (force (cdr (if (promise? (cdr list)) (force (cdr list)) (cdr list)))) (cdr (if (promise? (cdr list)) (force (cdr list)) (cdr list))))))) (else err))) (define (ZEDrd final function list) (cond (#t (ZEDrd! function (cons final (reverse list)))) (else err))) (define (ZEDread-all! collect) (cond (#t (ZEDread-all!a (read-char) collect)) (else err))) (define (ZEDread-all!a character collect) (cond ((eof-object? character) collect) (#t (ZEDread-all! (cons character collect))) (else err))) (define (ZEDread-all) (cond (#t (reverse (ZEDread-all! (quote ())))) (else err))) (define (ZEDread-sentence!a sentence collect) (cond ((null? sentence) collect) ((eqv? #\space (car sentence)) (ZEDread-sentence!a (cdr sentence) collect)) ((eqv? #\( (car sentence)) (ZEDread-sentence!aa sentence (ZEDgather-verb (cdr sentence)) collect)) (#t (ZEDread-sentence!ab sentence (ZEDgather-noun sentence) collect)) (else err))) (define (ZEDread-sentence!aa sentence gather-verb collect) (cond (#t (ZEDread-sentence!a (ZEDtails (+ 2 (length gather-verb)) sentence) (cons (ZEDverb gather-verb) collect))) (else err))) (define (ZEDread-sentence!ab sentence gather-noun collect) (cond (#t (ZEDread-sentence!a (ZEDtails (length gather-noun) sentence) (cons (ZEDnoun gather-noun) collect))) (else err))) (define (ZEDread-sentence!b list output-string) (cond (#t (begin (display list output-string) (ZEDread-sentence!ba output-string (get-output-string output-string)))) (else err))) (define (ZEDread-sentence!ba output-string get-output-string) (cond (#t (begin (close-output-port output-string) (ZEDread-sentence!baa (open-input-string get-output-string)))) (else err))) (define (ZEDread-sentence!baa input-string) (cond (#t (ZEDread-sentence!baaa input-string (read input-string))) (else err))) (define (ZEDread-sentence!baaa input-string answer) (cond (#t (begin (close-input-port input-string) answer)) (else err))) (define (ZEDread-sentence sentence) (cond (#t (ZEDread-sentence!b (reverse (ZEDread-sentence!a sentence (quote ()))) (open-output-string))) (else err))) (define (ZEDread-sentences sentences) (cond (#t (map ZEDread-sentence sentences)) (else err))) (define (ZEDready-clause clause) (cond (#t (cons (caaar clause) (cons (cdar clause) (cdr clause)))) (else err))) (define (ZEDready-program program) (cond (#t (map ZEDready-clause program)) (else err))) (define (ZEDreplace-trailing-white-space! program) (cond ((null? program) (quote ())) ((or (eqv? (car program) #\space) (eqv? (car program) #\ht) (eqv? (car program) #\cr) (eqv? (car program) #\newline)) (ZEDreplace-trailing-white-space! (cdr program))) (#t (cons #\newline program)) (else err))) (define (ZEDreplace-trailing-white-space program) (cond (#t (reverse (ZEDreplace-trailing-white-space! (reverse program)))) (else err))) (define (ZEDreverse ZEDlist) (cond (#t (reverse ZEDlist)) (else err))) (define (ZEDschemefy! expression arity-hash stack) (cond ((null? expression) (ZEDtop stack)) ((ZEDapplication? expression) (ZEDschemefy!a expression arity-hash stack (ZEDfunction expression))) (#t (ZEDschemefy! (cdr expression) arity-hash (ZEDpush (car expression) stack))) (else err))) (define (ZEDschemefy!a expression arity-hash stack function) (cond (#t (ZEDschemefy!aa expression arity-hash stack function (ZEDarity arity-hash function))) (else err))) (define (ZEDschemefy!aa expression arity-hash stack function arity) (cond ((ZEDgather-count? function) (ZEDschemefy! (cdr expression) arity-hash (ZEDpush (ZEDfirst arity stack) (ZEDtails arity stack)))) ((eq? function (quote ZED1)) (ZEDschemefy! (cdr expression) arity-hash (ZEDpush (list (quote if) (list (quote promise?) (cons (quote car) (ZEDfirst arity stack))) (list (quote force) (cons (quote car) (ZEDfirst arity stack))) (cons (quote car) (ZEDfirst arity stack))) (ZEDtails arity stack)))) ((eq? function (quote ZED!)) (ZEDschemefy! (cdr expression) arity-hash (ZEDpush (list (quote if) (list (quote promise?) (cons (quote cdr) (ZEDfirst arity stack))) (list (quote force) (cons (quote cdr) (ZEDfirst arity stack))) (cons (quote cdr) (ZEDfirst arity stack))) (ZEDtails arity stack)))) ((eq? function (quote ZEDc)) (ZEDschemefy! (cdr expression) arity-hash (ZEDpush (cons (quote cons) (map ZEDdelay-wrap (ZEDfirst arity stack))) (ZEDtails arity stack)))) (#t (ZEDschemefy! (cdr expression) arity-hash (ZEDpush (cons function (ZEDfirst arity stack)) (ZEDtails arity stack)))) (else err))) (define (ZEDschemefy expression arity-hash) (cond (#t (list (ZEDschemefy! (reverse expression) arity-hash (ZEDstack)))) (else err))) (define (ZEDsentence-less? sentence1 sentence2) (cond ((null? sentence2) #f) ((null? sentence1) #t) ((ZEDcharacter-less? (car sentence1) (car sentence2)) #t) ((ZEDcharacter-less? (car sentence2) (car sentence1)) #f) (#t (ZEDsentence-less? (cdr sentence1) (cdr sentence2))) (else err))) (define (ZEDsentences! program collect1 collect2) (cond ((null? program) collect2) ((eqv? #\newline (car program)) (ZEDsentences! (cdr program) (quote ()) (cons (reverse collect1) collect2))) (#t (ZEDsentences! (cdr program) (cons (car program) collect1) collect2)) (else err))) (define (ZEDsentences program) (cond (#t (reverse (ZEDsentences! program (quote ()) (quote ())))) (else err))) (define (ZEDsort!a jumble) (cond (#t (map list jumble)) (else err))) (define (ZEDsort!b comparator jumble) (cond ((null? jumble) (quote ())) ((null? (cdr jumble)) jumble) (#t (ZEDsort!b comparator (cons (ZEDmerge comparator (car jumble) (cadr jumble)) (ZEDsort!b comparator (cddr jumble))))) (else err))) (define (ZEDsort comparator jumble) (cond (#t (car (ZEDsort!b comparator (ZEDsort!a jumble)))) (else err))) (define (ZEDspace-newline! program collect) (cond ((or (null? program) (null? (cdr program))) (append program collect)) ((and (eqv? #\space (car program)) (eqv? #\newline (cadr program))) (ZEDspace-newline! (cdr program) collect)) (#t (ZEDspace-newline! (cdr program) (cons (car program) collect))) (else err))) (define (ZEDspace-newline program) (cond (#t (reverse (ZEDspace-newline! program (quote ())))) (else err))) (define (ZEDstack) (cond (#t (quote ())) (else err))) (define (ZEDstring ZEDtheString) (cond (#t (string-append "\"" ZEDtheString "\"")) (else err))) (define (ZEDtab-replace! program collect) (cond ((null? program) collect) ((eqv? #\ht (car program)) (ZEDtab-replace! (cdr program) (cons #\space collect))) (#t (ZEDtab-replace! (cdr program) (cons (car program) collect))) (else err))) (define (ZEDtab-replace program) (cond (#t (reverse (ZEDtab-replace! program (quote ())))) (else err))) (define (ZEDtails number list) (cond ((null? list) (quote ())) ((zero? number) list) ((> number 0) (ZEDtails (- number 1) (cdr list))) (else err))) (define (ZEDternary ZEDif ZEDthen ZEDelse) (cond (#t (apply string-append (list "(" ZEDif ")" "?" "(" ZEDthen ")" ":" "(" ZEDelse ")"))) (else err))) (define (ZEDternaryCombiner ZEDarm ZEDnext) (cond (#t (ZEDternaryCombiner1 (map ZEDcallingConvention ZEDarm) ZEDnext)) (else err))) (define (ZEDternaryCombiner1 ZEDarm ZEDnext) (cond (#t (ZEDternary (ZEDtop ZEDarm) (ZEDtop (ZEDpop ZEDarm)) ZEDnext)) (else err))) (define (ZEDtop stack) (cond (#t (car stack)) (else err))) (define (ZEDtrue? noun-list) (cond (#t (equal? noun-list (list #\# #\t #\r #\u #\e))) (else err))) (define (ZEDverb verb-list) (cond ((ZEDliteral? verb-list) (list (ZEDmake-literal verb-list))) (#t (list (ZEDmake-ZED verb-list))) (else err))) (define (ZEDwrite-all program) (cond ((null? program) (quote err)) (#t (ZEDwrite-all (begin (write-char (car program)) (cdr program)))) (else err))) (define (ZEDzed->scheme! value collect) (cond ((null? value) (reverse collect)) (#t (ZEDzed->scheme! (if (promise? (cdr value)) (force (cdr value)) (cdr value)) (cons (ZEDzed->scheme (if (promise? (car value)) (force (car value)) (car value))) collect))) (else err))) (define (ZEDzed->scheme value) (cond ((not (pair? value)) value) (#t (ZEDzed->scheme! value (quote ()))) (else err))) (define (ZEDzip-function-signature ZEDsignature) (cond (#t (ZEDzip-function-signature1 ZEDsignature (ZED/ (length ZEDsignature) 2))) (else err))) (define (ZEDzip-function-signature1 ZEDsignature ZEDhalf-length) (cond (#t (ZEDzip-function-signature11 (ZEDtails ZEDhalf-length ZEDsignature) (ZEDfirst ZEDhalf-length ZEDsignature))) (else err))) (define (ZEDzip-function-signature11 ZEDtypes ZEDidentifiers) (cond ((ZEDnull? ZEDidentifiers) (quote ())) (#t (cons (car ZEDtypes) (cons (car ZEDidentifiers) (ZEDzip-function-signature11 (cdr ZEDtypes) (cdr ZEDidentifiers))))) (else err))))
(ZEDcomp)
