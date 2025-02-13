(defun flip (lst)
	(if (or (null lst)(null(cdr lst)))
		lst
	(cons(cadr lst)
		(cons(car lst)
			(flip(cddr lst))))
	)
)

(flip '(1 2 3 4))

(defun remove-i (lst i acc)
	(if (< i 0)
		lst
		(if (null lst)
			(acc)
			(if (= i 0)
				(append acc (cdr lst))
				(remove-i (cdr lst) (- i 1) (cons (car lst) acc))
			)
		)
	)
)

(defun remove-i-wrap (lst i)
	(remove-i lst i nil)
)

(print(remove-i-wrap '(1 2 3 4 5 6) 1))