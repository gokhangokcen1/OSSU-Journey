
;; direction-starter.rkt

; 
; PROBLEM:
; 
; Given the data definition below, design a function named left 
; that consumes a compass direction and produces the direction 
; that results from making a 90 degree left turn.
; 


;; =================
;; Data definitions:

;; Direction is one of:
;;  - "N"
;;  - "S"
;;  - "E"
;;  - "W"
;; interp. a compass direction that a player can be facing
;; <examples are redundant for enumerations>
#;
(define (fn-for-direction d)
  (cond [(string=? d "N") (...)]
        [(string=? d "S") (...)]
        [(string=? d "E") (...)]
        [(string=? d "W") (...)]))

;; Template rules used:
;; - one of: 4 cases
;; - atomic distinct: "N"
;; - atomic distinct: "S"
;; - atomic distinct: "E"
;; - atomic distinct: "W"


;; =================
;; Functions:

;; Direction -> Direction
;; interp. consumes a direction and produce a 90 degree left turn
(check-expect (left "N") "W")
(check-expect (left "W") "S")
(check-expect (left "S") "E")
(check-expect (left "E") "N")


;(define (left d) "W") ;stub

;<use template from Direction>
(define (left d)
  (cond [(string=? d "N") "W"]
        [(string=? d "S") "E"]
        [(string=? d "E") "N"]
        [(string=? d "W") "S"]))
