(defun mul1 (lst x)
  (mapcar (lambda (el) (* el x) el) lst))

(defun mul2 (lst x)
  (mapcar (lambda (el) (if (numberp el) (* el x) el)) lst))

(print (mul1 '(1 2 3 4) 10))
(print (mul2 '(a b 2 a 11 d) 10))