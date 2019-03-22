;;; 欧几里德算法 if r is a remainder of a,b. the common divisor of a,b also is the common divisor of b,r
;;; so we can simplfy GCD(a, b) = GCD(b,r)

(define (gcd a b)
  (if (= b 0)
      a
      (let ((r (remainder a b)))
        (gcd b r))))


