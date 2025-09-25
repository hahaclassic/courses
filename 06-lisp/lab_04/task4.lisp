(defun wo_last_1 (lst) 
    (cond ((atom lst) Nil)
          ((cdr lst) (cons (car lst) (wo_last_1 (cdr lst))))))

(defun wo_last_2 (lst) 
    (cond ((atom lst) Nil)
          (t (reverse (cdr (reverse lst))))))


(print (wo_last_1 '(1 2 3 (5 5 5))))
(print (wo_last_1 '(1 2 3)))
(print (wo_last_1 '(1)))
(print (wo_last_1 3))
(print (wo_last_1 Nil))

(print (wo_last_2 '(1 2 3 (5 5 5))))
(print (wo_last_2 '(1 2 3)))
(print (wo_last_2 '(1)))
(print (wo_last_2 3))
(print (wo_last_2 Nil))

