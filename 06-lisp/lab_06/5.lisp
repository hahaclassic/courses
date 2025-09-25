(defun rec-add1 (lst)
    (cond
        ((null lst) 0)
        ((numberp (car lst)) 
            (+ (car lst) (rec-add1 (cdr lst))))
        (t (rec-add1 (cdr lst)))))

(print (rec-add1 '(1 2 3)))
(print (rec-add1 '(1 a 2 b 3)))
(print (rec-add1 '()))

(defun rec-add2 (lst)
    (cond
        ((numberp lst) lst)
        ((atom lst) 0)
        (t (+ (rec-add2 (car lst)) (rec-add2 (cdr lst))))))

(print (rec-add2 '(1 a 2 b 3 '(1 2 3))))
(print (rec-add2 '()))