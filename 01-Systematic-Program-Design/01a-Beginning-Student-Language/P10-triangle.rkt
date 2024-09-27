(require 2htdp/image)
;; triangle-starter.rkt

; PROBLEM:
; 
; Write an expression that uses triangle, overlay, and rotate to produce an image similar to this:
; 
;                                   .
; You can consult the DrRacket help desk for information on how to use triangle and overlay.
; Don't worry about the exact size of the triangles.
; 


(define YELLOW (triangle 50 "solid" "yellow"))
(define GREEN  (triangle 50 "solid" "green"))
(overlay GREEN (rotate 180 YELLOW))
