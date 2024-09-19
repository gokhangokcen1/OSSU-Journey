(require 2htdp/image)
(require 2htdp/universe)

(define WHEEL-RADIUS 5)
(define WHEEL-DISTANCE (* WHEEL-RADIUS 5))
(define CAR .)

(define BACKGROUND (empty-scene 300 40))
(define Y-CAR (image-height CAR))

; WorldState -> WorldState 
; moves the car by 3 pixels for every clock 
(check-expect (tock 20) 23)
(check-expect (tock 78) 81)

(define (tock cw)
  (+ cw 3))

; WorldState -> Image
; places the car into the BACKGROUND scene,
; according to the given world state
(check-expect (render 50) (place-image CAR 50 Y-CAR BACKGROUND))

 (define (render cw)
   (place-image CAR cw Y-CAR BACKGROUND))

(define (main ws)
   (big-bang ws
     [on-tick tock]
     [to-draw render]))

(main 0)
