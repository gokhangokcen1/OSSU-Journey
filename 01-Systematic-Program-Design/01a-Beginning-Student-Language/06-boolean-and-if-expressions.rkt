(require 2htdp/image)

;true
;false

(define WIDTH 100)
(define HEIGHT 100)

;(> WIDTH HEIGHT)
;(>= WIDTH HEIGHT)
;
;(= 1 2)
;(= 1 1)
;(> 3 9)

;(string=? "foo" "bar")

(define I1 (rectangle 10 20 "solid" "red"))
(define I2 (rectangle 20 10 "solid" "blue"))

;(< (image-width I1)
;   (image-width I2))
;
;(if (< (image-width I1)
;   (image-width I2))
;    "tall"
;    "wide")
;
;(if (> (image-width I1)
;   (image-width I2))
;    "tall"
;    "wide")

(if (< (image-width I2)
       (image-height I2))
    (image-width I2)
    (image-height I2))


(if (< (image-width .)
       (image-height I2))
    (image-width I2)
    (image-height I2))

(if (< 20
       (image-height I2))
    (image-width I2)
    (image-height I2))

(if (< 20
       (image-height .))
    (image-width I2)
    (image-height I2))

(if (< 20 10)
    (image-width I2)
    (image-height I2))

(if false
    (image-width I2)
    (image-height I2))

(image-height I2)
(image-height .)
10

(and (> (image-height I1) (image-height I2))
     (< (image-width I1) (image-width I2)))
