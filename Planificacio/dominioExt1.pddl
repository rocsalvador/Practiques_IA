(define (domain mundo_hotelero_1)

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
        (numero-hospedados ?res - reserva)
        (coste)
    )

    (:action asignar
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
        )
        :effect (and
            (asignada ?hab ?res)
            (not (pendiente ?res))
        )
    )

    (:action descartar
        :parameters (?res - reserva)
        :precondition (pendiente ?res)
        :effect (and
            (not (pendiente ?res))
            (increase (coste) 1)
        )
    )
    
)