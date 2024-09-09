;; quidditch-starter.rkt

; 
; PROBLEM:
; 
; Imagine that you are designing a program that will keep track of
; your favorite Quidditch teams. (http://www.internationalquidditch.org/).
; 
; Design a data definition to represent a list of Quidditch teams.


; Information:
; UBC
; McGill
; Team Who Must Not Be Named
; 
; 
; 
; 
; 
; 
; Data:
; "UBC"
; "McGill"
; "Team Who Must Not Be Named"
; 
; empty
; 
; (cons "UBC"
;       (cons "McGill"
;             empty))


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
