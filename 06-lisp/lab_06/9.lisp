(defun square (lst)
    (cond
        ((not lst) lst)
        (t (cons (* (car lst) (car lst)) (square (cdr lst))))))

(print (square '(1 2 3 4 5 11))) ;(1 4 9 16 25 121)
(print (square '(1))) ;(1)
(print (square '())) ;NIL
(print (square '(11 10 9))) ; (121 100 81)