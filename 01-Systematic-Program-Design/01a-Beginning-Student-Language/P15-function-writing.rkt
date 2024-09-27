
;; function-writing-starter.rkt

; 
; PROBLEM:
; 
; Write a function that consumes two numbers and produces the larger of the two. 
; 


(check-expect (larger 15 20) 20)
(check-expect (larger 20 20) 20)
(check-expect (larger 20 15) 20)

(define (larger x y)
  (if (> x y)
      x
      y))

