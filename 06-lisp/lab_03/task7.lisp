; 1
(defun pred1 (x) 
    (and (numberp x) (plusp x)))

(print (pred1 'a))

; 2
(defun pred2 (x) 
    (and (plusp x) (numberp x)))

(print (pred2 0)) ; если тут ввести не число, то будет ошибка: сначала надо проверить, что аргумент - число
