(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cddr s)))

(define (ordered? s)
	(cond
		((null? s) #t)
		((null? (cdr s)) #t)
		(else
			(if (> (car s) (car (cdr s))) 
				#f
            (ordered? (cdr s))
            )
		)
	)
)

(define (square x) (* x x))

(define (pow base exp)
	(cond
		((= exp 1) base)
		((= exp 0) 1)
		(else
			(if (even? exp) 
				(pow (square base) (quotient exp 2))
				(* base (pow base (- exp 1)))
				)
			)
		)
	)
