; Exercise 13. Define the function string-first, which extracts the first
; 1String from a non-empty string. 


(check-expect (string-first "hello world") "hello")
(check-expect (string-first "gokhan gokcen") "gokhan")

(define (string-first str)
  (substring str 0 1))
