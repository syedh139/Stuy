#lang racket
;Name: Syed Hussain
;Collaburated: Aronia Sarkar
;IntroCS pd 04
;HW #14: Using numerical values to produce theorms and
;finding specefic digits
;2022-10-12
;Time Spent: 2.1 Hours

(define
  getOnesDigit
  (lambda (a)
    (remainder a 10)));Takes any numeracal value
                ;and returns the last digit of the given value

(getOnesDigit 124)"Should be 4"
(getOnesDigit 5) "Should be 5"
 "Extra Test cases"
(getOnesDigit 214104192109412)"Should be 2"
(getOnesDigit 21048102481)"Should be 1"
(getOnesDigit 842232)"Should be 2"


(define
  discriminant
  (lambda (a b c)
    (- (sqr b)
       (* 4 a c)))) ;Takes variable a as the co efficient,
                    ;b as the sum and c as the product and
                   ;return discrimination



(discriminant 4 2 2)"Should be -28"
(discriminant 2 4 2)"Should be 0"
(discriminant 5 10 3)"Should be 40"
"Extra test cases"
(discriminant 9 6 4)"Should be -108"
(discriminant 13 5 2)"Should be -79"
(discriminant 8 2 6)"Should be -188"
(discriminant 9 1 0)"should be 1"


(define root1
  (lambda
      (a b c)
    (/
    (+ (* -1 b)
       (sqrt
        (+(sqr b)
         (* -1
            (* 4 a c))))) (* 2 a))));Takes variable a as the co efficient
                        ;, b as the sum and c as the product
                         ;and return the solution by quaratic formula

(root1 2 4 2) "Should be -1"
(root1 4 8 12)"Should be -1.0+1.4142135623730951i"

"Extra Test cases"

(root1 4 8 7) "Should be 1−0.866025i"
(root1 9 6 1)"Should be -0.333333 or -1/3"
(root1 8 4 8)"Should be 0.25−0.968246i"


(define GetHundredsDigit
  (lambda (a)
    (/
     (-
      (remainder a 1000)
      (remainder a 100));takes any numerical input and returns the hundred's digit
     100)))

(GetHundredsDigit 234) "Should be 2"
(GetHundredsDigit 76348)"Should be 3"

"Extra Test Cases"
(GetHundredsDigit 89)"Should be 0";notice that any input less then 2 digits with result in zero
(GetHundredsDigit 71)"Should be 0"
(GetHundredsDigit 217842) "Should be 8"


(define disaster
  (lambda
      (a b c)
    (/ c
       (+ a b)))) ;takes numerical inputs.
                ;add the 1st and 2nd input then
                 ;divide the 3 imput by
                ;the sum of first and second input

(disaster 20 80 100) "Should be 1"
(disaster 4 2 30) "Should be 5"

"Extra Test Cases"
(disaster 2 6 80)"Should be 10"
(disaster 10 5 60)"Should be 4"
(disaster 20 30 100)"Should be 2"
