;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname prime) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Matthew Patterson
;June 28 2019
;Functions to check for prime numbers in a list

(define (isitprime n d) ;
    (cond
     ((<= n 1) #f) ;check if number is less than or equal to 1 and return false
     ((= n 2) #t) ;check if the number is 2 and return true
     ((>= d n) #t) ; stops when divisor is equal to the number
     ((zero? (modulo n d)) #f) ; if the number is divided evenly by the divisor return false
     (else (isitprime n (+ d 1))))) ; recursion for each additional number
          

(define (prime p)
  (cond ((null? p) '()) ; if the list is null return null
        ((isitprime (car p) 2) (cons (car p) (prime (cdr p)))) ; run isitprime function and add it to the list if it returns true
        (else (prime (cdr p))))) ;if current value isnt added move on to the rest of the list

      