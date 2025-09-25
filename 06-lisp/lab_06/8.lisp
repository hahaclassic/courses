(defun first_odd (lst)
    (cond
        ((and (numberp lst) (oddp lst)) lst)
        ((atom lst) nil)
        (t (or (first_odd (car lst)) (first_odd(cdr lst))))))

(print (first_odd '(1 3 5))) ;1
(print (first_odd '(2 4 6 8))) ;NIL
(print (first_odd '(1 2 3 4))) ;1
(print (first_odd '())) ;NIL
(print (first_odd '(a 2 b 4 c 1))) ;1
(print (first_odd '((1 2) 3 4))) ;1
(print (first_odd '((2 2 2 (4 1) 7)))) ;1