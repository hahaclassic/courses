(defun last_1 (lst)
    (cond ((atom lst) Nil)
          (T (cons (car (reverse lst)) Nil)
    )))

(defun last_2 (lst)
    (cond ((atom lst) Nil)
          ((cdr lst) (last_2 (cdr lst)))
          (t lst)
    ))


(print (last_1 '(1 2 (5 5 5))))
(print (last_1 '(1)))
(print (last_1 3))
(print (last_1 Nil))

(print (last_2 '(1 2 3 (5 5 5))))
(print (last_2 '(1)))
(print (last_2 3))
(print (last_2 Nil))

