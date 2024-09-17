; Exercise 28. Determine the potential profit for these ticket prices: $1, $2, $3, $4, and $5. Which price maximizes the profit of the movie theater? Determine the best ticket price to a dime. 


(define (katilimci bilet-fiyati)
  (- 120 (* (- bilet-fiyati 5.0) (/ 15 0.1))))

(define (gelir bilet-fiyati)
  (* (katilimci bilet-fiyati)
     bilet-fiyati))

(define (maliyet bilet-fiyati)
  (+ 180 (* (katilimci bilet-fiyati) 0.04)))

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

en-iyi-fiyat
