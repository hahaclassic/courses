(defun convert (lst)
    (cond
        ((null lst) nil)
        ((atom (car lst)) (cons (car lst) (convert (cdr lst))))
        (t (nconc (convert (car lst)) (convert(cdr lst))))))

(print (convert ())) ;NIL
(print (convert '(1))) ;(1)
(print (convert '(1 2 3 4))) ;(1 2 3 4)
(print (convert '((1 2)(3 4)))) ;(1 2 3 4)
(print (convert '(((((1) 2) 3) 4)))) ;(1 2 3 4)