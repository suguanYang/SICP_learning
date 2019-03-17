(define tolerance 0.000000001)

(define (fixed-point f first-guess)
         (let ((close-enough? (lambda (x  y) (< (abs (- x y)) tolerance))))
           (define (try guess)
             (let ((next (f guess)))
               (if (close-enough? guess next)
                 next
                 (try next))))
           (try first-guess)))
