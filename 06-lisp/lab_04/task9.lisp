(defun mul1 (lst x)
    (cons (* (car lst) x) (cdr lst))
)

(defun mul2 (lst x)
    (cond ((null lst) Nil)
        ((numberp (car lst)) (cons (* (car lst) x) (cdr lst)))
        (t (cons (car lst) (mul2 (cdr lst) x)))
    ))


(print (mul1 '(10 2) 4))
(print (mul2 '(A 10 2 B) 4))