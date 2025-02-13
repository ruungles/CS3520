(defun flip (lst)
	(if (or (null lst)(null(cdr lst)))
		lst
	(cons(cadr lst)
		(cons(car lst)
			(flip(cddr lst))))
	)
)

(flip '(1 2 3 4))