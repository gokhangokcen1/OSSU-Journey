;Exercise 35. Design the function string-last, which extracts the last character from a non-empty string. 

;; String -> String
;; produces the last character from a string
(check-expect (string-last "hello") "o")
(check-expect (string-last "gokhan") "n")

(define (string-last str)
  (string-ith str (- (string-length str) 1)))

