;; Insertion sort in Lisp
 (defun i-sort (lon)
          (cond ((null lon) nil)
                (t (ordered-insert (first lon) (i-sort (rest lon))))))
 (defun ordered-insert (num lon)
           (cond ((null lon) (cons num nil))
                 (t (cond ((>= num (first lon)) (cons num lon))
                          (t (cons (first lon) 
                                   (ordered-insert num (rest lon))))))))
(defun main()
  (format t "Enter the list:")
  (setf a (read))
  (print(reverse(i-sort a)))
)
(main)