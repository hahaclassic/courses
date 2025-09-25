(defun is-subset (s1 s2)
    (every (lambda (x) (member x s2)) s1))

(defun set-equal (s1 s2)
    (and (= (length s1) (length s2)) (is-subset s1 s2)))

(print (set-equal '(A B C 1 2 3) '(A 1 B 2 C 3)))
(print (set-equal '(A B C 1 2 3) '(A 1 B 2 C 1)))
(print (set-equal '() '()))
(print (set-equal '() '(1)))
(print (set-equal '(1) '()))
(print (set-equal '(1) '(2 3 4)))