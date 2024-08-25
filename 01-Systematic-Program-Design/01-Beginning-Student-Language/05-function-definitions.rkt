(require 2htdp/image)

;; function-definitions-starter.rkt

;(above (circle 40 "solid" "red")
;       (circle 40 "solid" "yellow")
;       (circle 40 "solid" "green"))

(define (bulb c)
  (circle 40 "solid" c))

(above (bulb "red")
       (bulb "yellow")
       (bulb "green"))

(bulb (string-append "re" "d"))
;(bulb "red")
;(circle 40 "solid" "red")
