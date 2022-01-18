(define (problem problemaExt3-rand)
    (:domain mundo_hotelero_3)
	(:objects
		hab0 hab1 hab2 hab3 - habitacion
		res0 res1 res2 res3 - reserva
	)

	(:init
		(= (capacidad hab0) 1)
		(= (capacidad hab1) 8)
		(= (capacidad hab2) 4)
		(= (capacidad hab3) 8)

		(= (dia-inicio res0) 16)
		(= (dia-fin res0) 23)
		(= (numero-hospedados res0) 2)
		(pendiente res0)

		(= (dia-inicio res1) 5)
		(= (dia-fin res1) 9)
		(= (numero-hospedados res1) 1)
		(pendiente res1)

		(= (dia-inicio res2) 9)
		(= (dia-fin res2) 10)
		(= (numero-hospedados res2) 3)
		(pendiente res2)

		(= (dia-inicio res3) 25)
		(= (dia-fin res3) 29)
		(= (numero-hospedados res3) 2)
		(pendiente res3)

		(= (coste) 0)
		(= (num-max-capacidad) 8)
	)

	(:goal (forall (?res - reserva) (not (pendiente ?res))))

    (:metric minimize (coste))
)
