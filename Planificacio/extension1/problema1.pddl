(define (problem extension1)
    (:domain mundo_hotelero_1)
    (:objects
        hab1 hab2 - habitacion
        res1 res2 - reserva
    )

    (:init
        (= (capacidad hab1) 4)
        (= (capacidad hab2) 1)

        (= (dia-inicio res1) 1)
        (= (dia-fin res1) 5)
        (= (numero-hospedados res1) 2)

        (= (dia-inicio res2) 5)
        (= (dia-fin res2) 10)
        (= (numero-hospedados res2) 10)

        (= (coste) 0)

        (pendiente res1)
        (pendiente res2)
    )

    (:goal (forall (?res - reserva) (not (pendiente ?res))))

    (:metric minimize
        (coste)
    )
)
