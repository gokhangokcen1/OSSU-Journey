(require 2htdp/image)
;; cflag-starter.rkt

; 
; PROBLEM:
; 
; The background for the Canadian Flag (without the maple leaf) is this:
;          .
;          
; Write an expression to produce that background. (If you want to get the
; details right, officially the overall flag has proportions 1:2, and the 
; band widths are in the ratio 1:2:1.)
; 
; 


(define RED (rectangle 20 40 "solid" "red"))
(define WHITE (square 40 "solid" "white"))

(beside RED WHITE RED)
