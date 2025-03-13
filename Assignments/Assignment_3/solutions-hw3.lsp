(defun palindrome (lst)
  (let ((lst2 (reverse lst)))
    (palindrome-h lst lst2)
  )
)

(defun palindrome-h (lst lst2)
  (if (and (null lst) (null lst2))
      t
    (if (not (= (car lst)(car lst2)))
        nil
      (palindrome-h (cdr lst) (cdr lst2))
    )
  )
)

(print (palindrome '(1 2 3 2 1)))
(print (palindrome '(1 2 3 4 5)))


(defun occr (lst)
  (occr-help lst nil)
)

(defun occr-help (lst acc)
  (if (null lst)
    acc
    (let ((item (car lst)))
      (let ((occurance (count item lst)))
        (occr-help (remove item lst) (cons(cons item occurance) acc))
      )
    )
  )
)

(print (reverse (occr '(1 2 3 4 5 1 1 1 1 ))))

(defun nodups (lst)
  (nodups-help lst nil)
)

(defun nodups-help (lst acc)
  (if (null lst)
    acc
    (let ((item (car lst)))
      (nodups-help (remove item lst) (cons item acc))
    )
  )
)

(print(reverse(nodups '(a a b c c d e))))



(defun factorsL (lst)
  (if (null lst)
    nil
    (mapcar #'factor-help lst)
  )
)

(defun factor-help (n)
  (labels ((factorize (n d)
      (cond
        ((= n 1) nil)
        ((= 0 (mod n d)) (cons d (factorize (/ n d) d)))
        (t (factorize n (+ d 1)))
      )))
    (factorize n 2)
    
  )
)
(print(factorsL '(6 20 9 18)))


(defun dupe (lst num)
  (reverse(dupe-h lst num nil))
)

(defun dupe-h (lst num acc)
  (if (null lst)
      acc
    (dupe-h (cdr lst) num (inner-dupe (car lst) num acc))
  )
)


(defun inner-dupe (element counter acc)
  (if (= 0 counter)
      acc
    (inner-dupe element (- counter 1) (cons element acc))
  )
)

(print(dupe '(3 2 1) 3 ))