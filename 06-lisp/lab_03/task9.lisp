(defun how_alike (x y)
    (if (or (= x y) (equal x y)) 'the_same 
        (if (and (oddp x) (oddp y)) 'both_odd 
            (if (and (evenp x) (evenp y)) 'both_even 'difference))))

(print (how_alike '1 '1)) ; same
(print (how_alike 1 1)) ; same
(print (how_alike 1 2)) ; diff
(print (how_alike 2 4)) ; both even
(print (how_alike 1 3)) ; both odd
(print (how_alike 1 10)) ; diff