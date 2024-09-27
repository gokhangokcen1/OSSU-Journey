(require 2htdp/image)

empty

(define L1 (cons "Flames" empty))                ; a list of 1 element
(define L2 (list "Flames"))
(define L3 (cons 10 (cons 9 (cons 10 empty))))   ; a list of 3 elements
(define L4 (list 10 9 10))

(=  (first L3) (first L4))
(=  (first (rest L3)) (first (rest L4)))
(= (first (rest (rest L3))) (first (rest (rest L4))))

(define L5 (cons (square 10 "solid" "blue")      ; a list of 3 elements
           (cons (triangle 20 "solid" "green")        
                  empty)))                             



(first L1)
(first L2)
(first L3)

(rest L1)
(rest L2)
(rest L3)

(first (rest L2)) ;how do I get the second element of L2
(first (rest (rest L2))) ;how do I get the third element of L2

(empty? empty)
(empty? L1)
;(empty? 1)
