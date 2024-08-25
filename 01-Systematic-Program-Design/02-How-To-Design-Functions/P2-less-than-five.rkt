
;; less-than-five-starter.rkt

; 
; PROBLEM:
; 
; DESIGN function that consumes a string and determines whether its length is
; less than 5.  Follow the HtDF recipe and leave behind commented out versions 
; of the stub and template.
; 


;; String -> Boolean
;; determines strings length less than 5
(check-expect (less? "hi") true)
(check-expect (less? "hello") false)
(check-expect (less? "gokhan") false)

;(define (less? str) false) ;stub

;(define (less? str) ;template
;  (... img))

(define (less? str)
  (if (< (string-length str) 5)
      true
      false))
