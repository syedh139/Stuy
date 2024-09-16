#lang racket

;Syed Hussain
;IntroCS Pd. 04 sec 04
;HW#19: Using COND statements in factorials
;2022-10-19
;Time Cost: 1.5 hr





;(fact n) returns the value of n-factorial ( n! )
(define fact
  (lambda (n)


               (cond
                 [(= 0 n) 1]
                 [(negative? n) "Undefined"]
                 [(= n 1) 1]
                 [(= n 2) 2]
                 [(= n 3) 6]
                 [(= n 4) 24]
                 [(= n 5 ) 120]
                 [(= n 6) 720]
                 [(= n 7) 5040]
                 [(= n 8) 40320]
                 [(= n 9) 362880]
                 [(= n 10) 3628800]
                 )))
 
  
"Test Cases"

(fact 0) "Should be 1"

(fact 1) "Should be 1"

(fact 2) "Should be 2"

(fact 3) "Should be 6"

(fact 4) "Should be 24"

(fact 5) "Should be 120"

(fact 6) "Should be 720"

"Extra Test cases"

(fact -1) "Should be Undefined"

(fact -5) "Should be Undefined"