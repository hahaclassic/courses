(defun f10 (x) (- x 10))

(defun f (lst) 
    (mapcar #'f10 lst))

(f '(100 99 9)) ; (90 89 -1)