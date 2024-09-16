#lang racket

(define guesser (lambda (n g)
(*(/ (+ (/ n g) g) 2) 1.0)))
    ;(con
    ;  ((= (* g g) n) g))))
(guesser 4 2)
(guesser 4 1)
(guesser 4 5)
(guesser 9 3)
(guesser 9 10)
(guesser 16 4)
(guesser 16 1)
(guesser 25 15)
(guesser 36 6)
(guesser 16 900)
(guesser 16 20)
