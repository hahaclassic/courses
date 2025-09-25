(defun swap-first-last (lst)
  (if (or (null lst) (null (cdr lst)))
      lst
      (let ((first-cell lst)
            (last-cell (last lst)))
        (let ((tmp (car first-cell)))
          (rplaca first-cell (car last-cell))
          (rplaca last-cell tmp))
        lst)))

(defun get_middle (lst x)
    (cond ((null lst) lst)
        ((null (cdr lst)) (cons x Nil))
        (t (cons (car lst) (get_middle (cdr lst) x)))))


(defun swap (lst)
  (cons (car (last lst)) (get_middle (cdr lst) (car lst))))

(print (swap-first-last '(a b c d)))
(print (swap '(a b c d)))