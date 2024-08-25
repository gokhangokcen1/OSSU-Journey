(require 2htdp/image)
; 
; PROBLEM:
; 
; DESIGN a function called image-area that consumes an image and
; produces the area of that image. For the area it is sufficient
; to just multiple the image's width by its height.
; 
; Remember, when we say DESIGN, we mean follow the recipe.
; 
; Leave behind commented out versions of the stub and template.
; 


;; Image -> Number
;; produce image's width
(check-expect (image-area (rectangle 2 3 "solid" "red")) (* 2 3))
(check-expect (image-area (rectangle 7 6 "solid" "red")) (* 7 6))

;(define (image-area img) 0) ;stub

;(define (image-area img)    ;template
;  (... img))

(define (image-area img)
  (* (image-height img) (image-width img)))
