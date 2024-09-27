
; (define p "incendio")
; 
; (local [(define p "accio ")
;         (define (fetch n) (string-append p n))]
;   (fetch "portkey"))
; 
; ;accio portkey



(define a 1)
(define b 2)

(+ a
   (local [(define b 3)]
     (+ a b))
   b)

;7
