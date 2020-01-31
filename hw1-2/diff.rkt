;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname diff) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Matthew Patterson
;june 28 2019
;diff function to find elements in list x that arent in list y,
(define (diff x y)
  (cond
    ((null? x) '()) ; if x is null return empty list
    ((member (car x) y)  (diff (cdr x) y)) ;checks if current element is in y then recurs
    (else (cons (car x)(diff(cdr x) y))) ; if it is not in y add it to the list
    )
    
  )