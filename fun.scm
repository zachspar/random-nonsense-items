; Some fun functions to write in r5rs

; Ackermann's funcion
(define (ack m n)
 (cond ( (= m 0) ; case 1 where m == 0
           (+ n 1) )
       ( (and (> m 0) (= n 0)) ; case 2 where m > 0 and n == 0
           (ack (- m 1) 1))
       ( (and (> m 0) (> n 0)) ; lase case m > 0 AND n > 0
           (ack (- m 1) (ack m (- n 1)))
       )
 )
)


; Fibonacci function
(define (fib num)
 (cond ( (= num 0) 0)
       ( (= num 1) 1)
       (else
         (+ (fib (- num 1)) (fib (- num 2)))
       )
 )
)

(display "Fib for 49:\n")
(fib 49)








