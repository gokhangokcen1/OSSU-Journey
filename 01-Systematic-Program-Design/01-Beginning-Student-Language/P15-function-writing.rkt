
;; function-writing-starter.rkt

; 
; PROBLEM:
; 
; Write a function that consumes two numbers and produces the larger of the two. 
; 


(define (bigger x y)
  (if (> x y)
      x
      y))

(bigger 10 5)
(bigger 5 10)
