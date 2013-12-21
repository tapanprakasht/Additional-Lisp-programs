;; Selection sort in Lisp
(defun selection-sort (w)
  (when w (cons (mini w) (selection-sort (remove (mini w) w)))))

(defun mini (w)
  (mi (cdr w) (car w)))

(defun mi (w m)
  (cond ((null w) m)
	((< (car w) m) (mi (cdr w) (car w)))
        ((mi (cdr w) m))))
(defun main()
  (format t "Enter the list:")
  (setf a (read))
  (print(selection-sort a))
)
(main)

