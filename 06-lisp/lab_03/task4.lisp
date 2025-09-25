(defun is_between (n1 n2 n3) 
    (cond 
        ((> n1 n2) (< n1 n3))
        ((< n1 n2) (> n1 n3))
    ))
    
(print (is_between 1 2 3)) ; Nil
(print (is_between 2 1 3)) ; T
(print (is_between 2 3 1)) ; T
(print (is_between 1 1 2)) ; Nil
(print (is_between 1 1 1)) ; Nil