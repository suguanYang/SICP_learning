(define (MOUNT_OF_COINS)
  5)

(define (kinds-of-coin type)
  (cond ((= type 1) 1)
  		((= type 2) 5)
  		((= type 3) 10)
  		((= type 4) 25)
  		((= type 5) 50)))

(define (count-change amount)
  (cc amount 5))

(define (cc amount mount-of-coins)
  (cond ((= amount 0) 1)
  		((or (= mount-of-coins 0) (< amount 0)) 0)
        (else (+ (cc amount (- mount-of-coins 1))
        		 (cc (- amount (kinds-of-coin mount-of-coins)) mount-of-coins)))))

(count-change 100)