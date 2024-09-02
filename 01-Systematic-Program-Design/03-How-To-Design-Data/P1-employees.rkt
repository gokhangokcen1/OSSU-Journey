
;; employees-starter.rkt

;; =================
;; Data definitions:

; 
; PROBLEM A:
; 
; You work in the Human Resources department at a ski lodge. 
; Because the lodge is busier at certain times of year, 
; the number of employees fluctuates. 
; There are always more than 10, but the maximum is 50.
; 
; Design a data definition to represent the number of ski lodge employees. 
; Call it Employees.
; 


;; Employees are Natural[10,50]
;; interp. ranges of how many employees working in ski lodge now

(define E1 11)
(define E2 23)
(define E3 45)
#;
(define (fn-for-employees e)
  (... e))

;; Template rules used:
;;  - atomic non-distinct: Natural(10, 50]

;; =================
;; Functions:

; 
; PROBLEM B:
; 
; Now design a function that will calculate the total payroll for the quarter.
; Each employee is paid $1,500 per quarter. Call it calculate-payroll.
; 



;; Employees -> Natural
;; calculates the payroll 1500/employee
(check-expect (calculate-payroll E1) (* 1500 E1))
(check-expect (calculate-payroll E2) (* 1500 E2))
(check-expect (calculate-payroll E3)  67500)

;(define (calculate-payroll e) 0) ;stub


;<use template from Employees>
(define (calculate-payroll e)
  (* 1500 e))






