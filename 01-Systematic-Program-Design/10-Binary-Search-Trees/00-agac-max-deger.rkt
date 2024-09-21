; n l r 
(define myTree
  (list 53
        (list 23
              (list 11 '() '())
              (list 4 '() '())
              )
        (list 17 '() '())))

(define (node agac) (car agac))
(define (sol agac) (car (cdr agac)))
(define (sag agac) (car (cdr (cdr agac))))
(define (eb2 a b) (if (> a b) a b))

(define (eb3 a b c) (eb2 (eb2 a b) (eb2 a c)))

(define (enbuyuk agac) (if (empty? agac)
                           0
                           (eb3 (node agac)
                            (enbuyuk (sol agac))
                            (enbuyuk (sag agac)))))

(enbuyuk myTree)
