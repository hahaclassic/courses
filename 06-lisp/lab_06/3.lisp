(defun mul-nums (lst num acc) 
    (cond 
        ((null lst) acc)
        (t (mul-nums (cdr lst) num (cons (* (car lst) num) acc)))))

(defun my-mul-nums (lst num)
    (mul-nums lst num nil))

(print (my-mul-nums '(1 2 3 4) 10))

(defun mul (lst num acc) 
    (cond 
        ((null lst) acc)
        ((numberp (car lst)) (mul (cdr lst) num (cons (* (car lst) num) acc)))
        ((atom (car lst)) (mul (cdr lst) num (cons (car lst) acc)))
        (t (mul (cdr lst) num (cons (mul (car lst) num nil) acc)))))

(defun my-mul (lst num)
    (mul lst num nil))

(print (my-mul '(1 a 2 (a b 10) 3 4) 10))