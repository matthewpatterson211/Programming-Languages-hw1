;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname leapyear) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Matthew Patterson
;June 28 2019
;function to check if a year is a leap year
(define (leapyear? x)
 (and (zero? (remainder x 4)) (or (positive? (remainder x 100)) (zero? (remainder x 400))))) ;leap is true if year is divisible by 4 and 400 but not by 100
