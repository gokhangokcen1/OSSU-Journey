; Exercise 11. Define a function that consumes two numbers,
; x and y, and that computes the distance of point (x,y) to the origin.


(define (distance x y)
  (sqrt (+ (* x x) (* y y))))

