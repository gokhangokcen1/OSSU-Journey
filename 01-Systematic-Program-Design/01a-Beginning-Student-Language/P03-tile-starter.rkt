(require 2htdp/image)

;; tile-starter.rkt

; 
; PROBLEM:
; 
; Use the DrRacket square, beside and above functions to create an image like this one:
; 
; .
; 
; If you prefer to be more creative feel free to do so. You can use other DrRacket image 
; functions to make a more interesting or more attractive image.
; 

(define BLUE (square 20 "solid" "blue"))
(define YELLOW (square 20 "solid" "yellow"))
(above (beside BLUE YELLOW) (beside YELLOW BLUE))

