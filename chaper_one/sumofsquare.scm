(define (sumofsquare a b)
  (if (> a b)
      0
      (+ (* a a) (sumofsquare (+ 1 a) b))))
