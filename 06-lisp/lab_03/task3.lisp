(defun sort_two (num1 num2) 
    (cond 
        ((> num1 num2) (cons num2 (cons num1 nil)))
        (T (cons num1 (cons num2 nil)))))
    
(print (sort_two 1 2)) ; 1 2
(print (sort_two 2 1)) ; 1 2 