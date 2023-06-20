(define (my-filter pred s) (if (null? s)
                            nil
                            (if (pred (car s))
                            (cons (car s) (my-filter pred (cdr s)))
                            (my-filter pred (cdr s)))))

(define (interleave lst1 lst2)   (cond ((null? lst1) lst2)
                                  ((null? lst2) lst1)
                                  (else (cons (car lst1)
                                  (interleave lst2 (cdr lst1))))))

(define (accumulate joiner start n term) (cond ((= n 0) joiner)
                                          (else (+ (term start) (accumulate joiner (+ start 1) (- n 1))))))

(define (no-repeats lst) (if (null? lst)
                            nil
                        (my-filter ((lambda (s) (not(= (car lst) s))) (car (cdr lst))) (cdr lst))))
