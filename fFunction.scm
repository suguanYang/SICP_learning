(define (f n)
  ((cond ((< n 3) n)
        (else (+ (f (- n 1))
        			 (* 2 (f (- n 2)))
        			 (* 3 (f (- n 3))))))))


(define (f-iter n)
  (define (iter fn-a fn-b fn-c count)
    (if (= count n)
    	fn-c
    	(iter (+ fn-a (* 2 fn-b) (* 3 fn-c))
    		 fn-a
    		 fn-b
    		 (+ 1 count))))
  (if (< n 3)
  	  n
  	  (iter 2 1 0 0)))

(f-iter 0)
(f-iter 1)
(f-iter 2)
(f-iter 3)
(f-iter 4)