; Exercise 13. Define the function string-first, which extracts the first
; 1String from a non-empty string. 

(define (string-last str)
  (substring str (- (string-length str) 1) (string-length str)))

(string-last "hello")
