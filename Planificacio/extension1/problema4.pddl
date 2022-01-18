(define (problem problemaExt1-rand)
    (:domain mundo_hotelero_1)
	(:objects
		hab0 hab1 hab2 hab3 - habitacion
		res0 res1 res2 res3 - reserva
	)

	(:init
		(= (capacidad hab0) 4)
		(= (capacidad hab1) 5)
		(= (capacidad hab2) 6)
		(= (capacidad hab3) 5)

		(= (dia-inicio res0) 8)
		(= (dia-fin res0) 10)
		(= (numero-hospedados res0) 4)
		(pendiente res0)

		(= (dia-inicio res1) 28)
		(= (dia-fin res1) 30)
		(= (numero-hospedados res1) 1)
		(pendiente res1)

		(= (dia-inicio res2) 19)
		(= (dia-fin res2) 25)
		(= (numero-hospedados res2) 3)
		(pendiente res2)

		(= (dia-inicio res3) 28)
		(= (dia-fin res3) 30)
		(= (numero-hospedados res3) 1)
		(pendiente res3)

		(= (coste) 0)
	)

	(:goal (forall (?res - reserva) (not (pendiente ?res))))

    (:metric minimize (coste))
)
