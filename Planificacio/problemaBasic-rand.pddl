(define (problem problemaBasic-rand)
    (:domain mundo_hotelero)
	(:objects
		hab0 hab1 hab2 hab3 hab4 hab5 hab6 hab7 hab8 hab9 - habitacion
		res0 res1 res2 res3 res4 res5 res6 res7 res8 res9 - reserva
	)

	(:init
		(= (capacidad hab0) 4)
		(= (capacidad hab1) 2)
		(= (capacidad hab2) 4)
		(= (capacidad hab3) 1)
		(= (capacidad hab4) 3)
		(= (capacidad hab5) 1)
		(= (capacidad hab6) 4)
		(= (capacidad hab7) 3)
		(= (capacidad hab8) 2)
		(= (capacidad hab9) 4)

		(= (dia-inicio res0) 19)
		(= (dia-fin res0) 22)
		(= (numero-hospedados res0) 1)
		(pendiente res0)

		(= (dia-inicio res1) 20)
		(= (dia-fin res1) 27)
		(= (numero-hospedados res1) 4)
		(pendiente res1)

		(= (dia-inicio res2) 13)
		(= (dia-fin res2) 16)
		(= (numero-hospedados res2) 4)
		(pendiente res2)

		(= (dia-inicio res3) 6)
		(= (dia-fin res3) 9)
		(= (numero-hospedados res3) 2)
		(pendiente res3)

		(= (dia-inicio res4) 7)
		(= (dia-fin res4) 10)
		(= (numero-hospedados res4) 4)
		(pendiente res4)

		(= (dia-inicio res5) 25)
		(= (dia-fin res5) 30)
		(= (numero-hospedados res5) 3)
		(pendiente res5)

		(= (dia-inicio res6) 20)
		(= (dia-fin res6) 25)
		(= (numero-hospedados res6) 3)
		(pendiente res6)

		(= (dia-inicio res7) 18)
		(= (dia-fin res7) 20)
		(= (numero-hospedados res7) 4)
		(pendiente res7)

		(= (dia-inicio res8) 27)
		(= (dia-fin res8) 30)
		(= (numero-hospedados res8) 2)
		(pendiente res8)

		(= (dia-inicio res9) 21)
		(= (dia-fin res9) 23)
		(= (numero-hospedados res9) 2)
		(pendiente res9)

	)

	(:goal (forall (?res - reserva) (not (pendiente ?res))))
)
