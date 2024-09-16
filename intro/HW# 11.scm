#lang racket

(define
  (XOR a b)
  (or a b))

(XOR #t #t) "Should be #f"

(XOR #t #f) "Should be #t"

(XOR #f #t) "Should be #t"

(XOR #f #f) "Should be #f"

(define
  (bic a b)
(and
 (false? a)
 (false? b)))

(bic #t #t) "Should be #t" 

(bic #t #f) "should be #f"

(bic #f #t) "Should be #f"

(bic #f #f) "Should be #t"


(define
  (XOR3 a b c)
  (and a b c))

(XOR3 #t #t #t) "should be #f"

(XOR3 #t #t #f) "should be #f"

(XOR3 #t #f #t) "should be #f"

(XOR3 #t #f #f) "should be #t"

(XOR3 #f #t #t) "should be #f"

(XOR3 #f #t #f) "should be #t"

(XOR3 #f #f #t) "should be #t"

(XOR3 #f #f #f) "should be #f"

