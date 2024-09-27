
;; dinner-starter.rkt

;; =================
;; Data definitions:

; 
; PROBLEM A:
; 
; You are working on a system that will automate delivery for 
; YesItCanFly! airlines catering service. 
; There are three dinner options for each passenger, chicken, pasta 
; or no dinner at all. 
; 
; Design a data definition to represent a dinner order. Call the type 
; DinnerOrder.
; 


;; DinnerOrder is one of:
;;  - chicken
;;  - pasta
;;  - no dinner
;; interp. represent a dinner order
;; <examples are redundant for enumerations>
(define DO1 "chicken")
(define DO2 "pasta")
(define DO3 "no dinner")
#;
(define (fn-for-dinner-order d)
  (cond [(string=? d "chicken"  ) (...)]
        [(string=? d "pasta"    ) (...)]
        [(string=? d "no dinner") (...)]))

;; Template rules used:
;;  - one of: 3 cases
;;  - atomic distinct: "chicken"
;;  - atomic distinct: "pasta"
;;  - atomic distinct: "no dinner"


;; =================
;; Functions:

; 
; PROBLEM B:
; 
; Design the function dinner-order-to-msg that consumes a dinner order 
; and produces a message for the flight attendants saying what the
; passenger ordered. 
; 
; For example, calling dinner-order-to-msg for a chicken dinner would
; produce "The passenger ordered chicken."
; 


;; DinnerOrder -> String
;; interp. write what the passenger ordered
(check-expect (dinner-order-to-msg "chicken") "The passenger ordered chicken.")
(check-expect (dinner-order-to-msg "pasta") "The passenger ordered pasta.")
(check-expect (dinner-order-to-msg "no dinner") "The passenger ordered no dinner.")

;(define (dinner-order-to-msg d) "") ;stub

;<use template from DinnerOrder>

(define (dinner-order-to-msg d)
  (cond [(string=? d "chicken"  ) "The passenger ordered chicken."]
        [(string=? d "pasta"    ) "The passenger ordered pasta."]
        [(string=? d "no dinner") "The passenger ordered no dinner."]))

