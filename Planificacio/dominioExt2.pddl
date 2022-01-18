(define (domain mundo_hotelero_2)

    (:requirements :strips :adl :typing :fluents)
    (:types
        reserva habitacion
    )

    (:predicates
        (pendiente ?res - reserva)
        (asignada ?hab - habitacion ?res - reserva)
    )

    (:functions
        (capacidad ?hab - habitacion)
        (dia-inicio ?res - reserva)
        (dia-fin ?res - reserva)
        (orientacionr ?res - reserva)
        (numero-hospedados ?res - reserva)
        (orientacionh ?hab - habitacion)
        (coste)
    )

    (:action asignar-con-or
        :parameters (?hab - habitacion ?res - reserva)
        :precondition (and
            (pendiente ?res)
            (>= (capacidad ?hab) (numero-hospedados ?res))
            (forall
                (?reserv - reserva)
                (or
                    (not (asignada ?hab ?reserv))
                    (or
                        (<= (dia-fin ?reserv) (dia-inicio ?res))
                        (<= (dia-fin ?res) (dia-inicio ?reserv))
                    )
                )
            )
            (= (orientacionh ?hab) (orientacionr ?res))
        )
        :effect (and
            (asignada ?hab ?res)
            (not (pendiente ?res))
        )
    )

    (:action asignar-sin-or
        :parameters (?hab - habitacion ?res - reserva)
        :precondition (and
            (pendiente ?res)
            (>= (capacidad ?hab) (numero-hospedados ?res))
            (forall
                (?reserv - reserva)
                (or
                    (not (asignada ?hab ?reserv))
                    (or
                        (<= (dia-fin ?reserv) (dia-inicio ?res))
                        (<= (dia-fin ?res) (dia-inicio ?reserv))
                    )
                )
            )
            (not (= (orientacionh ?hab) (orientacionr ?res)))
        )
        :effect (and
            (asignada ?hab ?res)
            (not (pendiente ?res))
            (increase (coste) 1)
        )
    )


    (:action descartar
        :parameters (?res - reserva)
        :precondition (pendiente ?res)
        :effect (and
            (not (pendiente ?res))
            (increase (coste) 2)
        )
    )

)
