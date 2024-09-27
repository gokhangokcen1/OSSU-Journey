; 
; (cons "a" (cons "b" (cons "c" empty))) ;(list "a" "b" "c")
; 
; (list "a" "b" "c") ;(list "a" "b" "c")
; 
; (list (+ 1 2) (+ 3 4) (+ 5 6)) ;(list 3 7 11)


(define L1 (list "b" "c"))
(define L2 (list "d" "e" "f"))

; (cons "a" L1) ;(list "a" "b" "c")
; (list "a" L1) ;(list "a" (list "b" "c"))
; 
; (list L1 L2) ;(list (list "b" "c") (list "d" "e" "f"))
; (cons L1 L2) ;(list (list "b" "c") "d" "e" "f")


(append L1 L2) ;(list "b" "c" "d" "e" "f")

