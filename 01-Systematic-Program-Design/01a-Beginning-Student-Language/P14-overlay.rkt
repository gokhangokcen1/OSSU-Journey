
;; overlay-starter.rkt

; 
; PROBLEM:
; 
; Write an expression that uses star and overlay to produce an image similar to this:
; 
;                                   .
; You can consult the DrRacket help desk for information on how to use star and overlay. 
; Don't worry about the exact size of the stars.
; 


(require 2htdp/image)

(define S1 (star 15 "solid" "blue"))
(define S2 (star 30 "solid" "yellow"))
(define S3 (star 50 "solid" "blue"))
(overlay S1 S2 S3)

