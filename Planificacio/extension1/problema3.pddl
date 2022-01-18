(define (problem extension1)
    (:domain mundo_hotelero_1)
    (:objects
        hab1 hab2 - habitacion
        res1 res2 res3 - reserva
    )

    (:init
        (= (capacidad hab1) 4)
        (= (capacidad hab2) 5)

        (= (dia-inicio res1) 1)
        (= (dia-fin res1) 5)
        (= (numero-hospedados res1) 2)

        (= (dia-inicio res2) 1)
        (= (dia-fin res2) 5)
        (= (numero-hospedados res2) 5)

        (= (dia-inicio res3) 5)
        (= (dia-fin res3) 10)
        (= (numero-hospedados res3) 4)

        (= (coste) 0)

        (pendiente res1)
        (pendiente res2)
        (pendiente res3)
    )

    (:goal (forall (?res - reserva) (not (pendiente ?res))))

    (:metric minimize
        (coste)
    )
)
