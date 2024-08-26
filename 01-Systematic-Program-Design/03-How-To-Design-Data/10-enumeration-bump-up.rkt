 ; 
; PROBLEM:
;  
; AS part of designing a system to keep track of student grades, you
; are asked to design a data definition to represent the letter grade
; in a course, which one of A, B or C.
; 

;; Data definitions:

;; LetterGrade is one of:
;;  - "A"
;;  - "B"
;;  - "C"
;; interp. the letter grade in a course
;; <examples are redundant for enumerations>
#;
(define (fn-for-letter-grade lg)
  (cond [(string=? lg "A") (...)]
        [(string=? lg "B") (...)]
        [(string=? lg "C") (...)]))

;; Template rules used:
;;  - one of: 3 cases
;;  - atomic distinct value: "A"
;;  - atomic distinct value: "B"
;;  - atomic distinct value: "C"

;; Functions:

;; LetterGrade -> LetterGrade
;; produce next highest letter grade (no change for A)
(check-expect (bump-up "A") "A")
(check-expect (bump-up "B") "A")
(check-expect (bump-up "C") "B")

;(define (bump-up lg) "A")  ;stub

;<using template from LetterGrade>
(define (bump-up lg)
  (cond [(string=? lg "A") "A"]
        [(string=? lg "B") "A"]
        [(string=? lg "C") "B"]))

