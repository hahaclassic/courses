(defun sq (x) (* x x))

(defun f (lst)
    (mapcar #'sq lst))

(print (f '(1 2 3 11)))