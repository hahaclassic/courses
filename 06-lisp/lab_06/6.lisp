(defun recnth (n lst)
    (cond 
        ((not lst) nil)
        ((minusp n) nil)
        ((eql n 0)(car lst))
        (t (recnth (- n 1) (cdr lst)))))

(print (recnth 999999 '(1 2 3 4 5))) ; NIL
(print (recnth 0 '(1 2 3 4 5))) ;1
(print (recnth 4 '(1 2 3 4 5))) ;5
(print (recnth -2 '(1 2 3 4 5))) ; Nil