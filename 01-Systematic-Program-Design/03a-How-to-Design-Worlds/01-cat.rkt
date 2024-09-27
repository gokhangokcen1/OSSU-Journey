;; =================
;; Data definitions:

;; Cat is Number
;; interp. x coordinate of cat

(define C1 0)
(define C2 (/ WIDTH 2))
#;
(define (fn-for-cat c)
  (... c))
;; Template rules used:
;;  - atomic non-distinct: Number

;; =================
;; Functions:

;; Cat -> Cat
;; increase cat x position by SPEED
(check-expect (next-cat 0) SPEED)
(check-expect (next-cat 100) (+ 100 SPEED))
#;
(define (next-cat c) 1) ;stub

;; <use template from Cat>

(define (next-cat c)
  (+ c SPEED))

;; Cat -> Image
;; add CAT-IMG to MTS at proper x coordinate and CTR-Y
(check-expect (render-cat 100)
              (place-image CAT-IMG 100 CTR-Y MTS))
#;
(define (render-cat c) MTS) ;stub

;; <use temlate from Cat>

(define (render-cat c)
  (place-image CAT-IMG c CTR-Y MTS))

(big-bang 0               ; Cat
  (on-tick next-cat)      ; Cat -> Cat
  (to-draw render-cat))   ; Cat -> Image
