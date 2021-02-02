#|
 | A somewhat faster fibonacci generator!
 |
 | @author Ellie Moore
 | @version 02.01.2021
 |#
(define a (make-vector 1000 0))
(define (fib x)
     (cond
          ((= x 0) 0)
          ((= x 1) 1)
          ((not (= (vector-ref a x) 0)) (vector-ref a x))
          (else (recurse x))))
(define (recurse x)
    (begin
         (define s (+ (fib (- x 1)) (fib (- x 2))))
              (vector-set! a x s)
                   s))
(display "Hello, friend.")
(newline)
(display "Enter a number and I will generate the corresponding fibonacci value.")
(newline)
(define x (read))
(cond
    ((> x 999) (display "Error: input must be between 0 and 999 inclusive."))
    ((< x 0) (display "Error: input must be between 0 and 999 inclusive."))
    (else (fib x)))