(define (sort items)
    (if (null? items) (list )
            (if (pair? items)
                        (insert (car items) (sort (cdr items)))
                                  (list items))))

(define (insert item items)
          (if (null? items) (list item)
                        (let ((first (car items)))
                                      (if (null? first) item
                                                        (if (< item first)
                                                                          (cons item items)
                                                                                          (cons first (insert item (cdr items))))))))
