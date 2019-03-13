(define (d x)
  x)

(define DERIV
  (lambda (f)
  		  (lambda (x)
		  		  (/ (- (f (+ x (d x)))
		  		        (f x))
		  		      dx))))


