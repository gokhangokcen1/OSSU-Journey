; Exercise 45. Design a “virtual cat” world program that continuously moves the cat from left to right. Let’s call it cat-prog and let’s assume it consumes the starting position of the cat. Furthermore, make the cat move three pixels per clock tick. Whenever the cat disappears on the right, it reappears on the left


(require 2htdp/image)
(require 2htdp/universe)

(define cat1 .)
(define MTS (empty-scene 500 200))
(define CTR-Y 100)


(define (main ws)
  (big-bang ws                  
            (on-tick   tock)    
            (to-draw   render)))    

;; Cat -> Cat
(check-expect (tock 5) 8)
(define (tock ws)
  (if (>= ws (image-width MTS))
      (tock 0)
      (+ 3 ws)))


;; Cat -> Image
(check-expect (render 5) (place-image cat1 5 CTR-Y MTS))
(define (render ws)
  (place-image cat1 ws CTR-Y MTS))

(main 0)
  
