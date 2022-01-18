(define (problem extension4)
    (:domain mundo_hotelero_4)
    (:objects
        hab1 hab2 - habitacion
        res1 res2 res3 res4 - reserva
    )

    (:init
        (= (capacidad hab1) 4)
        (= (capacidad hab2) 3)

        (= (dia-inicio res1) 1)
        (= (dia-fin res1) 5)
        (= (numero-hospedados res1) 4)

        (= (dia-inicio res2) 5)
        (= (dia-fin res2) 8)
        (= (numero-hospedados res2) 3)

        (= (dia-inicio res3) 8)
        (= (dia-fin res3) 10)
        (= (numero-hospedados res3) 3)

        ;Introducir la maxima capacidad de todas las habitaciones
        (= (num-max-capacidad) 4)


        (= (descartadas) 0)
        (= (numero-hab-abiertas) 0)
        (= (plazas-desperdiciadas) 0)

        (pendiente res1)
        (pendiente res2)
        (pendiente res3)
    )

    (:goal (forall (?res - reserva) (not (pendiente ?res))))

    (:metric minimize
        (+ (* (num-max-capacidad) (descartadas)) (+ (* (/ (num-max-capacidad) 2) (numero-hab-abiertas)) (plazas-desperdiciadas)) )
    )
)
