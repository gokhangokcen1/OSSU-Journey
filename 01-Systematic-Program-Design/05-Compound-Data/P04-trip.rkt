
;; trip-starter.rkt

;; =================
;; Data definitions:

; 
; PROBLEM A:
; 
; Design a data definition to help travellers plan their next trip. 
; A trip should specify an origin, destination, mode of transport and 
; duration (in days).
; 


(define-struct trip (origin destination transport duration))
;; Trip is (make-trip (String String String Natural))
;           origin: where you started
;           destination: where you want to go
;           transport: mode of transport
;           duration in days

(define T1 (make-trip "Venus" "Mars" "falcon" 3))
(define T2 (make-trip "Whiterun" "Riften" "cart" 5))
(define T3 (make-trip "Kaer Morhen" "Skellige" "Roach" 7))

#;
(define (fn-for-trip t)
  (... (trip-origin t)      ;String
       (trip-destination t) ;String
       (trip-transport t)   ;String
       (trip-duration t)))  ;Natural

;; Template rules used:
;;   - compound: 4 fields


;; =================
;; Functions:

; 
; PROBLEM B:
; 
; You have just found out that you have to use all your days off work 
; on your next vacation before they expire at the end of the year. 
; Comparing two options for a trip, you want to take the one that 
; lasts the longest. Design a function that compares two trips and 
; returns the trip with the longest duration.
; 
; Note that the rule for templating a function that consumes two 
; compound data parameters is for the template to include all 
; the selectors for both parameters.
; 


;; Trip Trip -> Trip
;; interp. consumes two trip option and produces has the longest duration
(check-expect (longest-trip T1 T2) T2)
(check-expect (longest-trip T2 T3) T3)


;(define (longest-trip t1 t2) t1) ;stub

;<use template from Trip>

(define (longest-trip t1 t2)
  (if (> (trip-duration t1) (trip-duration t2))
      t1
      t2))
