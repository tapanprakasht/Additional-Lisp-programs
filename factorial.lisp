;; Lisp program to find factorial of number
(defun fact(n)
    (if(= n 0)
       1
       (* n (fact(- n 1)))))
(defun main()
   (format t "Enter a number:")
   (setf a(read))
   (print (fact a)))
(main)