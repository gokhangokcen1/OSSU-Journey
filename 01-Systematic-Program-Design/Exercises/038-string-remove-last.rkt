;Exercise 38. Design the function string-remove-last, which produces a string like the given one with the last character removed. 

;; String -> String
;; produces the string without the last character
(check-expect (string-remove-last "hello") "hell")
(check-expect (string-remove-last "gokhan") "gokha")

(define (string-remove-last s)
  (substring s 0 (- (string-length s) 1)))
  
