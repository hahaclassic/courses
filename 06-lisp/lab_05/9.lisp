(defun list-of-list-len (lst)
    (reduce (lambda (res elem) (+ res (length elem))) lst :initial-value 0)
)

(print (list-of-list-len '((1 2 3) (4 5 6) (A b c 3))))
(print (list-of-list-len '()))
(print (list-of-list-len '((1))))