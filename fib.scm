(define (fib n)
  (define (fib-iter current previous count)
    (if (= count 0)
    previous
    (fib-iter (+ current previous)
              current
              (- count 1))))
  (fib-iter 1 0 n)
)

