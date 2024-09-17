; Exercise 3. Add the following two lines to the definitions area:
; (define str "helloworld")
; (define i 5)
; Then create an expression using string primitives that adds "_" at position i. In general this means the resulting string is longer than the original one; here the expected result is "hello_world".



(define str "helloworld")
(define i 5)



(define (f str i)
  (string-append (substring str 0 i)
                 "_"
                 (substring str i (string-length str))))

(f str i)
(f "gokhan" 3)
