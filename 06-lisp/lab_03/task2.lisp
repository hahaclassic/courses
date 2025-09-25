(defun foo (num)
    (cond 
        ((< num 0) (- num 1))
        (T (+ num 1))))

(print (foo -1)) ; -2
(print(foo 0)) ; 1
(print(foo 1)) ; 2