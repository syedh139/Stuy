#lang racket

;Syed Hussain
;IntroCS Pd 04
;HW 22 - Idiomatic Constrction
;Time Cost: 2.5 hrs
;Collaborated With: Aronia Sarkar
  
;(sumOdd n)
;takes non-negative integer n,
;and returns the sum of the
;positive odd integers up
;to and including n.

(define sumOdd (lambda (n)
                 (cond
                   ((negative? n) "Error")
                   ((= n 1) 1)
                   ((odd? n) (sqr (+ (/ n 2) 0.5)))
                   ((even? n)(sqr (/ n 2))))))
"Test cases"

(sumOdd 0) "Should be 0"

(sumOdd 1) "Should be 1"

(sumOdd 2) "Should be 1"

(sumOdd 3) "Should be 4"

(sumOdd 9) "Should be 25"

(sumOdd 10) "Should be 25"



;(numDigits n) takes positive
;integer n and returns the
;number of digits in n.

(define numDigits(lambda (n)                       
  (cond
    ((negative? n) "error")
    ((< n 10)                     
      1)                                       
      ((+ 1 (numDigits (/ n 10)))))))

"Test cases"

(numDigits 5) "Should be 1"

(numDigits 35) "Should be 2"

(numDigits 492067) "Should be 6"


;(sumOddDigits n) takes positive
;integer n and returns the sum of
;n’s odd digits.

(define sumOddDigits
  (lambda (n)
    (cond
      ((= n 0) 0)
      ((= 0 (remainder n 2)) (sumOddDigits(quotient n 10)))
      (else (+ (remainder n 10)(sumOddDigits(quotient n 10)))))))

"Test Cases"

(sumOddDigits 0)"Should be 0"

(sumOddDigits 4)"Should be 0"

(sumOddDigits 3) "Should be 3"

(sumOddDigits 1984)"Should be 10"

(sumOddDigits 492067)"Should be 16"

