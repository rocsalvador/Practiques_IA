(define (domain mundo_hotelero_4)

    (:requirements :strips :adl :typing :fluents)
    (:types
        reserva habitacion
    )

    (:predicates
        (pendiente ?res - reserva)
        (asignada ?hab - habitacion ?res - reserva)
        (abierta ?hab - habitacion)
    )

    (:functions
        (capacidad ?hab - habitacion)
        (dia-inicio ?res - reserva)
        (dia-fin ?res - reserva)
        (numero-hospedados ?res - reserva)
        (descartadas)
        (plazas-desperdiciadas)
        (numero-hab-abiertas)
        (num-max-capacidad)
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
            (increase (plazas-desperdiciadas) (- (capacidad ?hab) (numero-hospedados ?res)))
            (when (not (abierta ?hab))
                (and (abierta ?hab)
                (increase (numero-hab-abiertas) 1))
            )
        )
    )

    (:action descartar
        :parameters (?res - reserva)
        :precondition (pendiente ?res)
        :effect (and
            (not (pendiente ?res))
            (increase (descartadas) 1)
        )
    )

)
