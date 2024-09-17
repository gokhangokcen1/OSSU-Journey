; Sample Problem The owner of a monopolistic movie theater in a small town has complete freedom in setting ticket prices. The more he charges, the fewer people can afford tickets. The less he charges, the more it costs to run a show because attendance goes up. In a recent experiment the owner determined a relationship between the price of a ticket and average attendance.
; 
; At a price of $5.00 per ticket, 120 people attend a performance. For each 10-cent change in the ticket price, the average attendance changes by 15 people. That is, if the owner charges $5.10, some 105 people attend on the average, if the price goes down to $4.90, average attendance increases to 135. 


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

(kar 5.00)


