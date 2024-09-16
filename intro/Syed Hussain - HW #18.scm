#lang racket


; Team Knights Rising (Kaia Berger, Shawn Huang, Syed Hussain)
; IntroCS pd4 sec4 
; HW18 -- LeapYear-related fxns using cond
; 2022-10-18
; time cost: 1.5 hrs
; collab: teammates
; consult: 



;(isLeapYr year) returns true
;if year is a leap year, false otherwise,

(define isLeapYr
  (lambda (l)
    (cond
      ((= (remainder l 400) 0) #t)
      ((= (remainder l 100) 0) #f)
      ((= (remainder l 4) 0)   #t)
      (else #f))
  ))

"Test Cases"

(isLeapYr 2000) "Should be true"

(isLeapYr 2004) "Should be true"

(isLeapYr 2008) "Should be  true"

(isLeapYr 2009) "Should be false"

(isLeapYr 2100) "Should be false"

(isLeapYr 2104) "Should be true"

(isLeapYr 2200) "Should be false"

(isLeapYr 2300) "Should be false"

(isLeapYr 2400) "Should be true"

(define daysInMonth (lambda (month year)
                      (if (= 1 month) "31"
                          (if (and (= 2 month) (= 0 (remainder year 4)))"29"
                              (if (= 2 month) "28"
                              (if (= 3 month) "31"
                                  (if (= 4 month) "30"
                                      (if (= 5 month) "31"
                                          (if (= 6 month) "30"
                                              (if (= 7 month) "31"
                                                  (if (= 8 month) "31"
                                                      (if (= 9 month) "30"
                                                          (if (= 10 month) "31"
                                                              (if (= 11 month) "30"
                                                                  (if (= 12 month) "31" "IDK")))))))))))))))
                                                
                                                        
"Test cases"

(daysInMonth 1 2010)"Should be 31"

(daysInMonth 2 2011) "Should be 28"

(daysInMonth 2 2000) "Should be 29"

(daysInMonth 4 2011) "Should be 30"                                

                     