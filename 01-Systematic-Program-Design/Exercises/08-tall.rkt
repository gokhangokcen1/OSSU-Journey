; Exercise 8. Create a conditional expression that computes whether
; the image is tall or wide. An image should be labeled "tall" if its
; height is larger than or equal to its width, otherwise it is "wide".
; See exercise 1 for how to create such expressions in DrRacket
; as you experiment, replace the cat with a rectangle of your choice
; to ensure that you know the expected answer.
; 

(require 2htdp/image)
(define cat .)

(define (tall? img)
  (cond [(> (image-height img) (image-width img)) "tall"]
        [(< (image-height img) (image-width img)) "wide"]
        [else "square"]))

(tall? cat)
(tall? (rectangle 10 20 "solid" "blue"))
(tall? (rectangle 20 10 "solid" "blue"))
(tall? (rectangle 20 20 "solid" "blue"))
