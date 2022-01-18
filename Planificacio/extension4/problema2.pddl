(define (problem problemaExt4-rand)
    (:domain mundo_hotelero_4)
	(:objects
		hab0 hab1 hab2 hab3 - habitacion
		res0 res1 res2 res3 - reserva
	)

	(:init
		(= (capacidad hab0) 7)
		(= (capacidad hab1) 7)
		(= (capacidad hab2) 1)
		(= (capacidad hab3) 4)

		(= (dia-inicio res0) 16)
		(= (dia-fin res0) 19)
		(= (numero-hospedados res0) 2)
		(pendiente res0)

		(= (dia-inicio res1) 30)
		(= (dia-fin res1) 30)
		(= (numero-hospedados res1) 3)
		(pendiente res1)

		(= (dia-inicio res2) 17)
		(= (dia-fin res2) 26)
		(= (numero-hospedados res2) 1)
		(pendiente res2)

		(= (dia-inicio res3) 6)
		(= (dia-fin res3) 11)
		(= (numero-hospedados res3) 3)
		(pendiente res3)

		(= (num-max-capacidad) 8)
		(= (numero-hab-abiertas) 0)
		(= (descartadas) 0)
		(= (plazas-desperdiciadas) 0)
	)

	(:goal (forall (?res - reserva) (not (pendiente ?res))))

    (:metric minimize (+ (* (num-max-capacidad) (descartadas)) (+ (* (/ (num-max-capacidad) 2) (numero-hab-abiertas)) (plazas-desperdiciadas)) ))
)

