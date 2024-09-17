; Exercise 14. Define the function string-last, which extracts the last
; 1String from a non-empty string. 

(define (string-last str)
  (substring str (- (string-length str) 1) (string-length str)))

(string-last "hello")
