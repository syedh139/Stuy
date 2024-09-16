#lang racket

(define sumOdd (lambda (n)

  (cond
    ((< n 0) "undefined")
    ((= n 0) 1)
(else (even? n (sumOdd (- n 1)))))))


  ;(define numDigit (lambda (n)
               ;      (digit? n)))
;(define 
                     
(odd? 9)
(sumOdd 0)
(sumOdd 1)
(sumOdd -4)