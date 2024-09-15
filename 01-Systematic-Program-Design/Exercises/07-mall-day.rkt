; Exercise 7. Boolean expressions can express some everyday problems.
; Suppose you want to decide whether today is an appropriate day to go
; to the mall. You go to the mall either if it is not sunny or if today
; is Friday (because that is when stores post new sales items).


(define (mall-day sunny friday)
  (cond [(and (not sunny) friday) true]
        [else
         false]))

(mall-day true true)   ;false
(mall-day true false)  ;false 
(mall-day false true)  ;true
(mall-day false false) ;false
