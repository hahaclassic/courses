(defun first_even (num) 
    (cond
        ((evenp num) num)
        (T (+ num 1))))

(print (first_even 10)) ; 10
(print (first_even 11)) ; 12