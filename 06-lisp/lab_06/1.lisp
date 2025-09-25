(defun my-reverse (lst &optional (r nil)) 
    (cond 
        ((null lst) r)
        (t (my-reverse (cdr lst) (cons (car lst) r)))))

(print (reverse '(a b c)))
(print (my-reverse '(a b c)))
