(defun is_palindrome (lst1 lst2)
    (every #'eql lst1 (reverse lst2)))

(print (is_palindrome '(A B C) '(C B A)))

(print (is_palindrome '(A B D) '(C B A)))
