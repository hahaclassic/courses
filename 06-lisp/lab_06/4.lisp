(defun insert-sorted (elem sorted-list)
  (cond ((null sorted-list) (cons elem Nil))
        ((<= elem (car sorted-list)) (cons elem sorted-list))
        (t (cons (car sorted-list)
                 (insert-sorted elem (cdr sorted-list))))))

(defun select-between (lst left right)
    (reduce (lambda (res elem)
        (if (< left elem right) (insert-sorted elem res) res))
            lst :initial-value ()))

(print (select-between '(19 9 92 -1 1 83 3 2 4 10 1) -10 10))