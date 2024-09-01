
;; summon-starter.rkt

; 
; PROBLEM:
; 
; Design a function that generates a summoning charm. For example: 
; 
;    (summon "Firebolt") should produce "accio Firebolt"
;    (summon "portkey")  should produce "accio portkey"
;    (summon "broom")    should produce "accio broom"
;    
; See http://harrypotter.wikia.com/wiki/Summoning_Charm for background on
; summoning charms.
; 
; Remember, when we say DESIGN, we mean follow the recipe.
; 
; Follow the HtDF recipe and leave behind commented out versions of the stub and template. 
; 



;; String -> String
;; consume which charm and produce summoning charm words
(check-expect (summoning-charm "Firebolt") "accio Firebolt")
(check-expect (summoning-charm "portkey") "accio portkey")
(check-expect (summoning-charm "broom") "accio broom")

;(define (summoning-charm s) "") ;stub
 
;(define (summoning-charm s)    ;template
;  (... s))

(define (summoning-charm s)
  (string-append "accio" " " s))
