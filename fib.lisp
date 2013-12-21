;; Lisp program to find fibbonaci series
(defun fib(n)
  (cond 
   ((= n 0) 0)
   ((= n 1) 1)
   ((+(fib(- n 1))(fib(- n 2))))))
(defun main()
 (format t "Enter a number:")
 (setf a (read))
 (loop for i from 1 to a do (print (fib i))))
(main)
