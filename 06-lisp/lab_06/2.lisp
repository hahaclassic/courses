(defun first-list-elem (lst)
    (cond 
        ((null lst) Nil)
        ((not (atom (car lst))) (car lst))
        (t (first-list-elem (cdr lst)))))

(print (first-list-elem '(T Nil a (1 a 2) (a b c) c d (1 2 3))))