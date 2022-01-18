(define (problem problemaBasic-rand)
    (:domain mundo_hotelero)
	(:objects
		hab0 hab1 hab2 hab3 - habitacion
		res0 res1 res2 - reserva
	)

	(:init
		(= (capacidad hab0) 1)
		(= (capacidad hab1) 6)
		(= (capacidad hab2) 4)
		(= (capacidad hab3) 5)

		(= (dia-inicio res0) 30)
		(= (dia-fin res0) 30)
		(= (numero-hospedados res0) 2)
		(pendiente res0)

		(= (dia-inicio res1) 12)
		(= (dia-fin res1) 17)
		(= (numero-hospedados res1) 2)
		(pendiente res1)

		(= (dia-inicio res2) 13)
		(= (dia-fin res2) 21)
		(= (numero-hospedados res2) 2)
		(pendiente res2)

	)

	(:goal (forall (?res - reserva) (not (pendiente ?res))))
)