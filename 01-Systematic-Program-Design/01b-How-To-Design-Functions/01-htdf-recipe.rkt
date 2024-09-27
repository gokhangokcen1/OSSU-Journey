; 
; PROBLEM:
; 
; Design a function that consumes a number and produces twice that number.
; Call your function double. Follow the HtDF recipe and show the stub and
; template.
; 


;; Number -> Number
;; produce 2 times the given number
(check-expect (double 3) 6)
(check-expect (double 4.2) (* 2 4.2))

;(define (double n) 0) ;this is the stub

;(define (double n)    ;this is the template
;  (... n))

(define (double n)
  (* 2 n))
