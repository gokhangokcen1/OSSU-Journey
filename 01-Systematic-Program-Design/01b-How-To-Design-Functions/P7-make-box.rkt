(require 2htdp/image)

;; make-box-starter.rkt

; 
; PROBLEM:
; 
; You might want to create boxes of different colours.
; 
; Use the How to Design Functions (HtDF) recipe to design a function that consumes a color, and creates a 
; solid 10x10 square of that colour.  Follow the HtDF recipe and leave behind commented out versions of
; the stub and template.
; 



;; String -> Image
;; consumes colour name and produces a 10x10 solid square  of that colour
(check-expect (make-box "blue") (square 10 "solid" "blue"))
(check-expect (make-box "red" ) (square 10 "solid" "red" ))


;(define (make-box s) (square 10 "solid" "blue")) ;stub

;(define (make-box s)  ;template
;  (... s))

(define (make-box s) 
  (square 10 "solid" s))
