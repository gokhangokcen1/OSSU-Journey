; Exercise 5. Use the 2htdp/image teachpack to create the image of a
; simple boat or tree. Make sure you can easily change the scale of
; the entire image. 

(require 2htdp/image)

(define (boat HEIGHT WIDTH)
  (above (square HEIGHT "solid" "blue") (rectangle WIDTH HEIGHT "solid" "blue")))

(boat 10 30)
(boat 40 100)
