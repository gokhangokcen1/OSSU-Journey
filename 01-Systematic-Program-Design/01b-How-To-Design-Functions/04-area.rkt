; 
; PROBLEM:
; 
; DESIGN a function called area that consumes the length of one side
; of a square and produces the area of the square.
; 
; Remember, when we say DESIGN, we mean follow the recipe.
; 
; Leave behind commented out versions of the stub and template.
; 


;; Number -> Number
;; given length of one side of square, produce the area of the square
(check-expect (area 2) 4)
(check-expect(area 4.2) (* 4.2 4.2))


;(define (area n) 0) ;stub
;(define (area n)    ;template
; (... n))

(define (area n)
  (* n n))
