(define-struct pos (x y))

(define P1 (make-pos 3 6)) ;constructor
(define P2 (make-pos 2 8))

(pos-x P1) ;3              ;selectors
(pos-y P2) ;8

(pos? P1) ;true            ;predicate
(pos? "hello") ;false 
