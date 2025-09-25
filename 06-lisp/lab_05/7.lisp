(defun cartesian (l1 l2)
    (mapcan
        (lambda (x) (mapcar
            (lambda (y) (cons x y)) l2)) l1)
)

(print (cartesian '(a b c) '(1 2 3)))