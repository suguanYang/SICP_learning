(load "sqrt.scm")

(define (good-enough? oldGuess guess)
  > 0.001 (/ (abs(- oldGuess guess)) guess))

(define (sqrt guess x)
  (if (good-enough? guess (improve guess x))
  	(improve guess x)
  	(sqrt (improve guess x) x)
  ))


(sqrt 1.0 900000000000000000000000000000000000000000000000000000000000000000000000000000000000)
