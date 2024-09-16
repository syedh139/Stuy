#lang racket

;Syed hussain
;IntroCS pd 04
;HW# 13_Instruction that helps
;identify if all 3 side makes a right triangle.
;And justifies it by true and false
;2022/10/07
;time oost: 0.5 hours

(define
  (isPythTriple?
   a b c)
  (= (sqr c)
   (+ (sqr a)
      (sqr b))))

(isPythTriple? 3 4 6) "(should be false)"
(isPythTriple? 3 4 5) "(should be true)"
(isPythTriple? 21 74 21) "(should be false)"
(isPythTriple? 29 9 86) "(should be false)"
(isPythTriple? 4 8 12) "(should be false)"
(isPythTriple? 9 11 15) "(should be false)"
(isPythTriple? 5 12 13) "(should be true)"
   
