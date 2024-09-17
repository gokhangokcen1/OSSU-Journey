; Exercise 12. Define the function cvolume, which accepts the length
; of a side of an equilateral cube and computes its volume. If you have
; time, consider defining csurface, too.

(require 2htdp/image)

(define (cvolume img)
  (* (image-width img) (image-width img) (image-width img)))

(cvolume (square 10 "solid" "blue"))

(define (csurface img)
  (* 6 (image-width img)))

(csurface (square 10 "solid" "blue"))

