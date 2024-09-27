; 
; PROBLEM:
; 
; Design a data definition for a traffic light that can either be disaabled,
; or be one of red, yellow or green.


;; Data definitions:

;; TLight is one of:
;;  - false              
;;  - "red"
;;  - "yellow"
;;  - "green"
;; interp. false means the light is disabled, otherwise the color of the light

(define TL1 false)
(define TL2 "red")


(define (tlight tl)
  (cond [(false? tl) (...)]
        [(string=? tl "red") (...)]
        [(string=? tl "yellow") (...)]
        [(string=? tl "green") (...)]))


;; Template rules used:
;;   - one of: 4 cases
;;   - atomic distinct: false
;;   - atomic distinct: "red"
;;   - atomic distinct: "yellow"
;;   - atomic distinct: "green"
