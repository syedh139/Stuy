#lang racket


(define (isPythTriple? a b c) (= (sqr b (+ sqr a) sqr c)))                                                                                                                                                    

(isPythTriple? 3 4 5)
