;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname num_atoms) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Matthew Patterson
;June 28 2019
;function to check the number of atoms in a list
(define (num_atoms x)
  (cond ((null? x) 0) ;check if the list is null
        ((not (list? x)) 1) 
        (else (+ (num_atoms (car x))
                 (num_atoms (cdr x)))))) ;add the elements of the list