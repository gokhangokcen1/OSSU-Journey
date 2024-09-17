;Exercise 37. Design the function string-rest, which produces a string like the given one with the first character removed. 

;; String -> String
;; produces the string without the first character
(check-expect (string-rest "hello") "ello")
(check-expect (string-rest "gokhan") "okhan")

(define (string-rest s)
  (substring s 1 (string-length s)))
  
