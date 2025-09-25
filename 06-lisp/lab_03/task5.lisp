(print (and 'fee 'fie 'foe)) ; foe (т.к. все аргументы не Nil), возвращается последнее не Nil

(print (or nil 'fie 'foe)) ; fie (or возвращает первый не Nil аргумент)

(print (and (equal 'abc 'abc) 'yes)) ; yes 

(print (or 'fee 'fe 'foe)) ; fee

(print (and nil 'fie 'foe)) ; nil

(print (or (equal 'abc 'abc) 'yes)) ; T


