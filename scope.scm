(define (factorial max-count)
  (define (fact-iter product count)
    (if (> count max-count)
    product
    (fact-iter (* product count)
               (+ 1 count))))
  (fact-iter 1 1))

(factorial 30)