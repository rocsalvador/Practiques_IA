(define (problem basic)
    (:domain mundo_hotelero_3)
    (:objects
        hab1 hab2 - habitacion
        res1 res2 - reserva
    )

    (:init
        (= (capacidad hab1) 5)
        (= (capacidad hab2) 4)

        (= (dia-inicio res1) 1)
        (= (dia-fin res1) 5)
        (= (numero-hospedados res1) 4)

        (= (dia-inicio res2) 5)
        (= (dia-fin res2) 10)
        (= (numero-hospedados res2) 4)

        (= (coste) 0)

        ;Introducir la maxima capacidad de todas las habitaciones
        (= (num-max-capacidad) 5)

        (pendiente res1)
        (pendiente res2)
    )

    (:goal (forall (?res - reserva) (not (pendiente ?res))))

    (:metric minimize
        (coste)
    )
)

