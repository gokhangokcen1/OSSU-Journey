; Exercise 6. Add the following line to the definitions area:

(require 2htdp/image)

(define cat . )

(define (pixels img)
  (* (image-height img) (image-width img)))

(pixels cat)
