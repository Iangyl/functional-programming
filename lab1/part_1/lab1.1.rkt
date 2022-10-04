#lang racket

(define (digitSum n)
  (if (= n 0)
      0
      (+ (modulo n 10) (digitSum (/ (- n (modulo n 10)) 10)))))