(require 2htdp/image)
(require 2htdp/universe)
; 
; PROBLEM:
; 
; As we learned in the cat world programs, cats have a mind of their own. When they 
; reach the edge they just keep walking out of the window.
; 
; Cows on the other hand are docile creatures. They stay inside the fence, walking
; back and forth nicely.
; 
; Design a world program with the following behaviour:
;    - A cow walks back and forth across the screen.
;    - When it gets to an edge it changes direction and goes back the other way
;    - When you start the program it should be possible to control how fast a
;      walker your cow is.
;    - Pressing space makes it change direction right away.
;    
; To help you here are two pictures of the right and left sides of a lovely cow that 
; was raised for us at Brown University.
; 
; .     .
; 
; Once your program works here is something you can try for fun. If you rotate the
; images of the cow slightly, and you vary the image you use as the cow moves, you
; can make it appear as if the cow is waddling as it walks across the screen.
; 
; Also, to make it look better, arrange for the cow to change direction when its
; nose hits the edge of the window, not the center of its body.
; 



;; =================
;; Constants:

(define WIDTH  400)
(define HEIGHT 200)


(define CTR-Y (/ HEIGHT 2)) 


(define RCOW .)
(define LCOW .)

(define RCOW- (rotate -2 RCOW))
(define RCOW+ (rotate  2 RCOW))
(define LCOW- (rotate -2 LCOW))
(define LCOW+ (rotate  2 LCOW))



(define MTS (empty-scene WIDTH HEIGHT))




;; =================
;; Data definitions:

(define-struct cow (x dx))
;; Cow is (make-cow Natural[0, WIDTH] Integer)
;; interp. (make-cow x dx) is a cow with x coordinate x and x velocity dx
;;         the x is the center of the cow
;;         x  is in screen coordinates (pixels)
;;         dx is in pixels per tick
;;
(define C1 (make-cow 10  3)) ; at 10, moving left -> right
(define C2 (make-cow 20 -4)) ; at 20, moving left <- right
#;
(define (fn-for-cow c)
  (... (cow-x c)    ;Natural[0, WIDTH]
       (cow-dx c))) ;Integer

;; Template rules used:
;;  - compound: 2 fields





;; =================
;; Functions:

;; Cow -> Cow
;; called to make the cow go for a walk; start with (main (make-cow 0 3))
;; no tests for main function
(define (main c)
  (big-bang c
            (on-tick next-cow)       ; Cow -> Cow
            (to-draw render-cow)     ; Cow -> Image
            (on-key  handle-key)))   ; Cow KeyEvent -> Cow



;; Cow -> Cow  
;; increase cow x by dx; when gets to edge, change dir and move off by 1
(check-expect (next-cow (make-cow 20           3)) (make-cow (+ 20 3)  3)) ;away from edges
(check-expect (next-cow (make-cow 20          -3)) (make-cow (- 20 3) -3))

(check-expect (next-cow (make-cow (- WIDTH 3)  3)) (make-cow WIDTH     3)) ;reaches edge
(check-expect (next-cow (make-cow 3           -3)) (make-cow 0        -3))

(check-expect (next-cow (make-cow (- WIDTH 2)  3)) (make-cow WIDTH    -3)) ;tries to pass edge
(check-expect (next-cow (make-cow 2           -3)) (make-cow 0         3)) 

;(define (next-cow c) c)      ;stub

(define (next-cow c)
  (cond [(> (+ (cow-x c) (cow-dx c)) WIDTH) (make-cow WIDTH (- (cow-dx c)))]
        [(< (+ (cow-x c) (cow-dx c)) 0)     (make-cow 0     (- (cow-dx c)))]
        [else
         (make-cow (+ (cow-x c) (cow-dx c))
                   (cow-dx c))]))



;; Cow -> Image
;; place appropriate cow image on MTS at (cow-x c) and CTR-Y
(check-expect (render-cow (make-cow 99 3))
              (place-image RCOW- 99 CTR-Y MTS))
(check-expect (render-cow (make-cow 33 -3))
              (place-image LCOW- 33 CTR-Y MTS))

;(define (render-cow c) MTS)  ;stub

(define (render-cow c)  
  (place-image (choose-image c) (cow-x c) CTR-Y MTS))

;; Cow -> Image
;; choose [L|R]COW[+|-] depending on cow's direction and position
(check-expect (choose-image (make-cow 1  3)) RCOW-)
(check-expect (choose-image (make-cow 2  3)) RCOW+)
(check-expect (choose-image (make-cow 1 -4)) LCOW-)
(check-expect (choose-image (make-cow 2 -4)) LCOW+)
(check-expect (choose-image (make-cow 1  0)) LCOW-)
(check-expect (choose-image (make-cow 2 -4)) LCOW+)

;(define (choose-image c) RCOW) ;stub

;took template from Cow

(define (choose-image c)
  (if (> (cow-dx c) 0)
      (if (odd? (cow-x c))
          RCOW-
          RCOW+)
      (if (odd? (cow-x c))
          LCOW-
          LCOW+)))




;; Cow KeyEvent-> Cow
;; reverse direction of cow travel when space bar is pressed
(check-expect (handle-key (make-cow (/ WIDTH 2) -3) " ") (make-cow (/ WIDTH 2) 3))
(check-expect (handle-key (make-cow (/ WIDTH 2) 3) " ")     (make-cow (/ WIDTH 2) -3))
(check-expect (handle-key (make-cow (/ WIDTH 2) 3) "a")     (make-cow (/ WIDTH 2) 3))


;(define (handle-key c ke) (make-cow 100 -5)) ;stub

;<template according to KeyEvent>

(define (handle-key c ke)
  (cond [(key=? ke " ") 
         (make-cow (cow-x c)
                   (- (cow-dx c)))]
        [else c]))




