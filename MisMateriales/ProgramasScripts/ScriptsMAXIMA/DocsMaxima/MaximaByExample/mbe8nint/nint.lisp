;;;nint.lisp
;;; Maxima by Example, Ch. 8, Numerical Integration
;;; 2012/10/31
;;; Ted Woollett

;;;code from barton willis old file
;;; topoly.lisp

(defun $complex_number_p (e)
  (complex-number-p e #'$numberp))
  
  
