; 
; PROBLEM:
; 
; Using the CityName data definition below design a function
; that produces true if the given city is the best in the world.
; (You are free to decide for yourself which is the best city
; in the world.)


;; Data definitions:

;; CityName is String
;; interp. the name of a city
(define CN1 "Boston")
(define CN2 "Vancouver")
#;
(define (fn-for-city-name cn)
  (... cn))

;; Template rules used:
;;  atomic non-distinct: String



;; Functions:

;; CityName -> Boolean
;; produce true if the given city is Hogsmeade
(check-expect (best? "Boston") false)
(check-expect (best? "Hogsmeade") true)

;(define (best? cn) false)   ;stub

; took template from CityName
#;
(define (best? cn)
  (if (string=? cn "Hogsmeade")
      true
      false))

(define (best? cn)
  (string=? cn "Hogsmeade"))
