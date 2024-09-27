; .

;; BST Natural -> String or false
;; Try to find node with given key, if found produce value; if not found produce false.
(check-expect (lookup-key BST0  99) false)

(check-expect (lookup-key BST1   1) "abc")
(check-expect (lookup-key BST1   0) false) ;L fail
(check-expect (lookup-key BST1  99) false) ;R fail
(check-expect (lookup-key BST10  1) "abc") ;L L succeed
(check-expect (lookup-key BST10  4) "dcj") ;L R succeed
(check-expect (lookup-key BST10 27) "wit") ;R L succeed
(check-expect (lookup-key BST10 50) "dug") ;R R succeed


;(define (lookup-key t k) "") ;stub

;<template according to BST, and additional atomic parameter k>

(define (lookup-key t k)
  (cond [(false? t) false]
        [else
         (cond [(= k (node-key t)) (node-val t)]
               [(< k (node-key t)) ;should we go left?
                (lookup-key (node-l t) k)]
               [(> k (node-key t)) ;should we go right?
                (lookup-key (node-r t) k)])]))
