#lang racket

(define leapyear (lambda (a)

  (if (real? (/ a 400)) "True"
      (if (real? (/ a 4)) "True" "False"))))

(leapyear 2001)