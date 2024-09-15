; Exercise 13. Define the function string-first, which extracts the first
; 1String from a non-empty string. 

(define (string-first str)
  (substring str 0 1))

(string-first "hello")
