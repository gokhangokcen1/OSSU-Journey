;; quidditch-starter.rkt

;  
; PROBLEM:
;  
; Imagine that you are designing a program that will keep track of
; your favorite Quidditch teams. (http://www.internationalquidditch.org/).
; 
; (A) Design a data definition to represent a list of Quidditch teams.
; (B) Design a function that consumes ListOfString and produces true if
;     the list includes "UBC".



;; ListOfString is one of:
;;  - empty
;;  - (cons String ListOfString)
;; interp. a list of strings
(define LOS1 empty)
(define LOS2 (cons "Mcgill" empty))
(define LOS3 (cons "UBC" (cons "McGill" empty)))

(define (fn-for-los los)
  (cond [(empty? los) (...)]
        [else
         (... (first los)    ;String
              (rest los))])) ;ListOfString

;; Template rules used:
;;  - one of: 2 cases
;;  - atomic distinct: empty
;;  - compound: (cons String ListOfString)
;;  - self-reference: (rest los) is ListOfString

;; ListOfString -> Boolean
;; produce true if los includes "UBC"
(check-expect (contains-ubc? empty) false)
(check-expect (contains-ubc? (cons "McGill" empty)) false)
(check-expect (contains-ubc? (cons "UBC" empty)) true)
(check-expect (contains-ubc? (cons "McGill" (cons "UBC" empty))) false)

;(define (contains-ubc? los) false) ;stub

(define (contains-ubc? los)
  (cond [(empty? los) false]
        [else
         (if (string=? (first-los) "UBC")
             true
             (contains-ubc? (rest los)))])) 
