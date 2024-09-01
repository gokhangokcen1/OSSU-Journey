
;; ensure-question-starter.rkt

; 
; PROBLEM:
; 
; Use the How to Design Functions (HtDF) recipe to design a function that consumes a string, and adds "?" 
; to the end unless the string already ends in "?".
; 
; For this question, assume the string has length > 0. Follow the HtDF recipe and leave behind commented 
; out versions of the stub and template.
; 


;; String -> String
;; if string length is bigger than * and not ends in "?" add "?"
(check-expect (ensure-question "hello?") "hello?")
(check-expect (ensure-question "hello") "hello?")


;(define (ensure-question s) "") ;stub

;(define (ensure-question s)  ;template
;  (... s))

(define (ensure-question s)
  (if (string=? (substring s (- (string-length s) 1)) "?")
      s
      (string-append s "?")))


