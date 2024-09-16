#lang racket
;(define isOdd?
  ;(lambda (x)
   ; ( = 1
    ;   (remainder x 2))))

> "(define isPythTriple?
    (lambda (a b c)"
;(isOdd? 3)

(define isPythTriple?
  (lambda (a b c)
    (or (a b c)
        (b c a)
        (c a b))))