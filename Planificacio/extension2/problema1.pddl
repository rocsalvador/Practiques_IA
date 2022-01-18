(define (problem basic)
    (:domain mundo_hotelero_2)
    (:objects
        hab1 hab2 - habitacion
        res1 res2 - reserva
    )

    ; 0 -> N , 1 -> S , 2 -> E , 3 -> O

    (:init
        (= (capacidad hab1) 3)
        (= (orientacionh hab1) 0)

        (= (capacidad hab2) 3)
        (= (orientacionh hab2) 1)

        (= (dia-inicio res1) 1)
        (= (dia-fin res1) 5)
        (= (numero-hospedados res1) 2)
        (= (orientacionr res1) 1)
        (pendiente res1)

        (= (dia-inicio res2) 1)
        (= (dia-fin res2) 5)
        (= (numero-hospedados res2) 2)
        (= (orientacionr res2) 0)
        (pendiente res2)

        (= (coste) 0)

    )

    (:goal (forall (?res - reserva) (not (pendiente ?res))))

    (:metric minimize
        (coste)
    )
)
