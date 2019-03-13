(define (pascal col row)
  (if (or (= row 0) (= row col))
      1
      (+ (pascal (- col 1) (- row 1))
         (pascal (- col 1) row))))


(define (pascal-iter col row)
  (define (iter c r)
    body))