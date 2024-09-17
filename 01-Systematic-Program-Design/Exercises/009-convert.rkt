; Exercise 9.Then create an expression that converts the value
; of in to a non-negative number. For a String, it determines how long
; the String is, for an Image, it uses the area, for a Number,
; it uses the absolute value, for #true it uses 10 and for #false 20. 

(require 2htdp/image)

(define (in x)
  (cond
    [(string? x) (string-length x)]  
    [(number? x) (abs x)]          
    [(image? x) (* (image-width x) (image-height x))] 
    [(boolean? x) (if x
                       10
                       20)]      
    [else 0]))                       


(in "gokhan") ;6
(in -50) ;50
(in (rectangle 20 10 "solid" "blue")) ;200
(in true) ;10
(in false) ;20
    
    
