(define (square x)
  (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))


(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.000000000000001))

(define (sqrt guess x)
  (if (good-enough? guess x)
  	guess
  	(sqrt (improve guess x) x)
  ))

;(sqrt 1.0 900000000000000000000000000000000000000000000000000000000000000000000000000000000000)
