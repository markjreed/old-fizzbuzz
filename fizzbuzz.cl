(flet ((divisible-by (m) (lambda (n) (zerop (mod m n)))))
  (let* ((rules '((3 Fizz) (5 Buzz) (15 FizzBuzz)))
         (factors (cons 1 (mapcar #'car rules))))
    (loop for i from 1 to 100 doing
      (print (let ((d (apply #'max (remove-if-not (divisible-by i) factors))))
        (if (= 1 d) i (cadr (assoc d rules))))))))
