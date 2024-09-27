(list 1 '() '())
(define a1 (list 81 (list 82 '() '())
                    (list 93 '() '())))

(define (kok agac) (first agac))
(kok a1)

(define (topla agac) (if (empty? agac)
                         0
                         (+ (first agac)
                        (topla (first (rest agac)))
                        (topla (first (rest (rest agac)))))))

(topla a1)
