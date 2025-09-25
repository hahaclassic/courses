(defun get_sum (dice)
    (+ (car dice) (cdr dice)))

(defun is_reroll (dice) 
    (let
        ((f (car dice))
        (s (cdr dice)))
    (or (and (= f 6) (= s 6))
        (and (= f 1) (= s 1))))
)

(defun is_win (dice)
    (let 
        ((sum (get_sum dice)))
    (or (= sum 7) (= sum 11)))
)

(defun roll_dice ()
    (setf *random-state* (make-random-state t))
    (cons (+ (random 5) 1)
          (+ (random 5) 1)))

(defun roll_dice_result (id)
    (let ((dice (roll_dice)))
        (print 'Player)
        (princ id)
        (print 'dice)
        (princ dice)
        (cond 
            ((is_reroll dice) (roll_dice_result id))
            (t dice))))

(defun game ()
    (let 
        ((dice1 (roll_dice_result 1))
        (dice2 (roll_dice_result 2)))
    (cond 
        ((is_win dice1) (print '"Abcolute win: player1"))
        ((is_win dice2) (print "Abcolute win: player2"))
        ((> (get_sum dice1) (get_sum dice2)) (print "win: player1"))
        ((< (get_sum dice1) (get_sum dice2)) (print "win: player2"))
        (t (print "draw."))
    )
))

(game)