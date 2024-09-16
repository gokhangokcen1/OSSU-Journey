;; String -> String
;; produces the first character from a string
(check-expect (string-first "hello") "h")
(check-expect (string-first "gokhan") "g")

(define (string-first str)
  (string-ith str 0))

