
(define b 1)

(+ b
   (local [(define b 2)]
     (* b b))
   b)

(+ 1
   (local [(define b 2)]
     (* b b))
   b)

(define b_0 2)

(+ 1
   (* b_0 b_0)
   b)

(+ 1
   (* 2 b_0)
   b)

(+ 1
   (* 2 2)
   b)

(+ 1
   4
   b)

(+ 1
   4
   1)

6

