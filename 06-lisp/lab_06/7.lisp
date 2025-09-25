(defun allodd (lst)
    (cond
        ((not (numberp (car lst))) nil)
        ((cdr lst) (and (oddp (car lst)) (allodd (cdr lst))))
        (t (oddp (car lst)))))

(print (allodd '(1)));T
(print (allodd '(1 3 5)));T
(print (allodd '(1 3 5 7)));T
(print (allodd '(2 4 (6 8))));NIL
(print (allodd '(1 2 3 4)));NIL
(print (allodd '(1 2 (3 4))));NIL
(print (allodd ())) ;NIL
(print (allodd '(1 a a a 2)));NIL