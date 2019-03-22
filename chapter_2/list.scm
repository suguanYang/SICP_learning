(define (nth items n)
  (cond ((null? items) (error "out of range"))
        ((= n 0) (car items))
        (else (nth (cdr items) (- n 1)))))

(define (len items)
  (if (null? items)
    0
    (+ 1 (len (cdr items)))))

(define (len-iterative items)
  (define (len-iter r-items count)
    (if (null? r-items)
      count
      (len-iter (cdr r-items) (+ 1 count))))
  (len-iter items 0))

