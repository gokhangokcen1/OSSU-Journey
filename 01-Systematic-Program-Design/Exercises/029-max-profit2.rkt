; Exercise 29. After studying the costs of a show, the owner discovered several ways of lowering the cost. As a result of these improvements, there is no longer a fixed cost; a variable cost of $1.50 per attendee remains.
; 
; Modify both programs to reflect this change. When the programs are modified, test them again with ticket prices of $3, $4, and $5 and compare the results. 


(define (katilimci bilet-fiyati)
  (- 120 (* (- bilet-fiyati 5.0) (/ 15 0.1))))

(define (gelir bilet-fiyati)
  (* (katilimci bilet-fiyati)
     bilet-fiyati))

(define (maliyet bilet-fiyati)
  (* (katilimci bilet-fiyati) 1.50))

(define (kar bilet-fiyati)
  (- (gelir bilet-fiyati)
     (maliyet bilet-fiyati)))

(define en-iyi-fiyat
  (cond
    [(and (> (kar 1) (kar 2)) (> (kar 1) (kar 3)) (> (kar 1) (kar 4)) (> (kar 1) (kar 5))) "$1.00"]
    [(and (> (kar 2) (kar 1)) (> (kar 2) (kar 3)) (> (kar 2) (kar 4)) (> (kar 2) (kar 5))) "$2.00"]
    [(and (> (kar 3) (kar 1)) (> (kar 3) (kar 2)) (> (kar 3) (kar 4)) (> (kar 3) (kar 5))) "$3.00"]
    [(and (> (kar 4) (kar 1)) (> (kar 4) (kar 2)) (> (kar 4) (kar 3)) (> (kar 4) (kar 5))) "$4.00"]
    [else "$5.00"]))

en-iyi-fiyat ;"$4.00"
 
