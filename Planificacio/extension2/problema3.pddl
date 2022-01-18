(define (problem problemaExt2-rand)
    (:domain mundo_hotelero_2)
	(:objects
		hab0 hab1 hab2 hab3 - habitacion
		res0 res1 res2 res3 - reserva
	)`
	
	; 0 -> N , 1 -> S , 2 -> E , 3 -> O

	(:init
		(= (capacidad hab0) 5)
		(= (orientacionh hab0) 2)

		(= (capacidad hab1) 5)
		(= (orientacionh hab1) 1)

		(= (capacidad hab2) 5)
		(= (orientacionh hab2) 0)

		(= (capacidad hab3) 5)
		(= (orientacionh hab3) 3)


		(= (dia-inicio res0) 17)
		(= (dia-fin res0) 21)
		(= (numero-hospedados res0) 2)
		(= (orientacionr res0) 1)
		(pendiente res0)

		(= (dia-inicio res1) 20)
		(= (dia-fin res1) 26)
		(= (numero-hospedados res1) 4)
		(= (orientacionr res1) 2)
		(pendiente res1)

		(= (dia-inicio res2) 10)
		(= (dia-fin res2) 11)
		(= (numero-hospedados res2) 3)
		(= (orientacionr res2) 1)
		(pendiente res2)

		(= (dia-inicio res3) 5)
		(= (dia-fin res3) 10)
		(= (numero-hospedados res3) 2)
		(= (orientacionr res3) 1)
		(pendiente res3)

		(= (coste) 0)
	)

	(:goal (forall (?res - reserva) (not (pendiente ?res))))

    (:metric minimize (coste))
)
