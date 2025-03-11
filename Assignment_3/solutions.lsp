(defun palindrome (lst)
  (do ((i lst (cdr i))
       (j (reverse lst) (cdr j)))
      ((or (null i)(null j)) T)
      (if (not (equal (car i) (car j)))
            nil)
  )
)

(print (palindrome '(1 2 3 2 1)))
(print (palindrome '(1 2 3 4 5)))


