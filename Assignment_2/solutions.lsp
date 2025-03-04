(defun flip (lst acc)
    (do(
    ;variable
        (i lst (cdr i))
    ;end statement
            ((null i) acc)
    ;body
        (let ((j (cdr i)))
            (if j
                (progn 
                    (append (car j) acc)
                    (append (car i) acc)
                    (setq i j))
                (append (car i) acc)
            )
        )
    )
    )
)