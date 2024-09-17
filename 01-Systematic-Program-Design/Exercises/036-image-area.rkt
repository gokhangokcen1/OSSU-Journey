;Exercise 36. Design the function image-area, which counts the number of pixels in a given image.

(require 2htdp/image)
;; Image -> Number
;; consumes an image and produces number of pixels in a given image
(check-expect (image-area (rectangle 10 20 "solid" "white")) (* 10 20))

(define (image-area img)
  (* (image-height img) (image-width img)))
