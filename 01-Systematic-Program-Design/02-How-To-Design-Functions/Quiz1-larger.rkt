(require 2htdp/image)
; PROBLEM:
; 
; Design a function that consumes two images and produces true if the first is larger than the second.
; 


;; Image -> Boolean
;; consumes two images and produces true if the first one is larger
(check-expect (larger? (rectangle 10 20 "solid" "red") (rectangle 10 10 "solid" "red")) true)
(check-expect (larger? (rectangle 10 20 "solid" "red") (rectangle 10 20 "solid" "red")) false)
(check-expect (larger? (rectangle 10 20 "solid" "red") (rectangle 10 30 "solid" "red")) false)


;(define (larger? img1 img2) false) ;stub

;(define (larger? img1 img2) ;template
;  (... img1 img2))

(define (larger? img1 img2)
  (> (* (image-height img1) (image-width img1))
     (* (image-height img2) (image-width img2))))
