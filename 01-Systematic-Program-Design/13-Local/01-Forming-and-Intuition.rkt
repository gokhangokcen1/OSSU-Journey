(local [(define a 1)
        (define b 2)]
  (+ a b))

(local [(define p "accio ")
        (define (fetch n) (string-append p n))]
  (fetch "portkey"))
