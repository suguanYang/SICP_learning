(define (subset set)
  (if (null? set) (list ())
  (let ((rest (subset (cdr set))))
       (append rest (map (lambda (ele) (cons (car set) ele)) rest)))))
