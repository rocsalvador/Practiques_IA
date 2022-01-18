;;; ---------------------------------------------------------
;;; urn_webprotege_ontology_a887b531-26c0-45eb-999c-afe05b9d2c0e.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology urn_webprotege_ontology_a887b531-26c0-45eb-999c-afe05b9d2c0e.owl
;;; :Date 10/12/2021 19:12:03

(defclass N44c2580cc6dc42c3ae8f8af9b2c69ee0
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
)

(defclass Usuario
    (is-a N44c2580cc6dc42c3ae8f8af9b2c69ee0)
    (role concrete)
    (pattern-match reactive)
    (slot tieneCoche
        (type SYMBOL)
        (create-accessor read-write))
    (multislot tiene
        (type INSTANCE)
        (create-accessor read-write))
    (multislot vive_con
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Anciano
    (is-a Usuario)
    (role concrete)
    (pattern-match reactive)
)

(defclass Adulto
    (is-a Usuario)
    (role concrete)
    (pattern-match reactive)
)

(defclass Joven
    (is-a Usuario)
    (role concrete)
    (pattern-match reactive)
)

(defclass N99d94a2f4abe4d0a9c9000c34b3d58d3
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
)

(defclass Vivienda
    (is-a N99d94a2f4abe4d0a9c9000c34b3d58d3)
    (role concrete)
    (pattern-match reactive)
    (slot tieneGaraje
        (type SYMBOL)
        (create-accessor read-write))
    (multislot dispone_de
        (type INSTANCE)
        (create-accessor read-write))
    ;;; Una vivienda esta a una cierta distancia de una zona de interés
    (multislot esta_a_cierta_distancia
        (type INSTANCE)
        (create-accessor read-write))
    (multislot formada_por
        (type INSTANCE)
        (create-accessor read-write))
    (multislot se_encuentra_en_un
        (type INSTANCE)
        (create-accessor read-write))
    (slot conElectrodomesticos
        (type SYMBOL)
        (create-accessor read-write))
    (slot conBuenasVistas
        (type SYMBOL)
        (create-accessor read-write))
    (slot permitidoMascotas
        (type SYMBOL)
        (create-accessor read-write))
    (slot accesibleSillaRuedas
        (type SYMBOL)
        (create-accessor read-write))
    (slot amueblada
        (type SYMBOL)
        (create-accessor read-write))
    (slot conAireAcondicionado
        (type SYMBOL)
        (create-accessor read-write))
    (slot precioAlquiler
        (type FLOAT)
        (create-accessor read-write))
    (slot superficieVivienda
        (type FLOAT)
        (create-accessor read-write))
    (slot calleVivienda
        (type STRING)
        (create-accessor read-write))
    (multislot tieneAscensor
        (type SYMBOL)
        (create-accessor read-write))
)

(defclass Unifamiliar
    (is-a Vivienda)
    (role concrete)
    (pattern-match reactive)
    (slot tipoCasa
        (type STRING)
        (create-accessor read-write))
)

(defclass Piso
    (is-a Vivienda)
    (role concrete)
    (pattern-match reactive)
    (multislot esta_en
        (type INSTANCE)
        (create-accessor read-write))
    (slot altura
        (type STRING)
        (create-accessor read-write))
)

(defclass Duplex
    (is-a Piso)
    (role concrete)
    (pattern-match reactive)
)

(defclass Loft
    (is-a Piso)
    (role concrete)
    (pattern-match reactive)
)

(defclass Apartamento
    (is-a Piso)
    (role concrete)
    (pattern-match reactive)
)

(defclass Atico
    (is-a Piso)
    (role concrete)
    (pattern-match reactive)
)

(defclass Instalacion
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
)

(defclass Piscina
    (is-a Instalacion)
    (role concrete)
    (pattern-match reactive)
    (slot volumenPiscina
        (type FLOAT)
        (create-accessor read-write))
)

(defclass Zona_de_deporte
    (is-a Instalacion)
    (role concrete)
    (pattern-match reactive)
    (multislot campoDeporte
        (type STRING)
        (create-accessor read-write))
)

(defclass Ubicacion
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot longitudX
        (type FLOAT)
        (create-accessor read-write))
    (slot latitudY
        (type FLOAT)
        (create-accessor read-write))
)

(defclass Vivienda
    (is-a Ubicacion)
    (role concrete)
    (pattern-match reactive)
    (slot tieneGaraje
        (type SYMBOL)
        (create-accessor read-write))
    (multislot dispone_de
        (type INSTANCE)
        (create-accessor read-write))
    ;;; Una vivienda esta a una cierta distancia de una zona de interés
    (multislot esta_a_cierta_distancia
        (type INSTANCE)
        (create-accessor read-write))
    (multislot formada_por
        (type INSTANCE)
        (create-accessor read-write))
    (multislot se_encuentra_en_un
        (type INSTANCE)
        (create-accessor read-write))
    (slot conElectrodomesticos
        (type SYMBOL)
        (create-accessor read-write))
    (slot conBuenasVistas
        (type SYMBOL)
        (create-accessor read-write))
    (slot permitidoMascotas
        (type SYMBOL)
        (create-accessor read-write))
    (slot accesibleSillaRuedas
        (type SYMBOL)
        (create-accessor read-write))
    (slot amueblada
        (type SYMBOL)
        (create-accessor read-write))
    (slot conAireAcondicionado
        (type SYMBOL)
        (create-accessor read-write))
    (slot precioAlquiler
        (type FLOAT)
        (create-accessor read-write))
    (slot superficieVivienda
        (type FLOAT)
        (create-accessor read-write))
    (slot calleVivienda
        (type STRING)
        (create-accessor read-write))
    (multislot tieneAscensor
        (type SYMBOL)
        (create-accessor read-write))
)

(defclass Unifamiliar
    (is-a Vivienda)
    (role concrete)
    (pattern-match reactive)
    (slot tipoCasa
        (type STRING)
        (create-accessor read-write))
)

(defclass Piso
    (is-a Vivienda)
    (role concrete)
    (pattern-match reactive)
    (multislot esta_en
        (type INSTANCE)
        (create-accessor read-write))
    (slot altura
        (type STRING)
        (create-accessor read-write))
)

(defclass Duplex
    (is-a Piso)
    (role concrete)
    (pattern-match reactive)
)

(defclass Loft
    (is-a Piso)
    (role concrete)
    (pattern-match reactive)
)

(defclass Apartamento
    (is-a Piso)
    (role concrete)
    (pattern-match reactive)
)

(defclass Atico
    (is-a Piso)
    (role concrete)
    (pattern-match reactive)
)

(defclass Zona_de_interes
    (is-a Ubicacion)
    (role concrete)
    (pattern-match reactive)
)

(defclass De_ocio
    (is-a Zona_de_interes)
    (role concrete)
    (pattern-match reactive)
)

(defclass De_primera_necesidad
    (is-a Zona_de_interes)
    (role concrete)
    (pattern-match reactive)
)

(defclass De_arte_y_cultura
    (is-a Zona_de_interes)
    (role concrete)
    (pattern-match reactive)
)

(defclass Zona_verde
    (is-a Zona_de_interes)
    (role concrete)
    (pattern-match reactive)
)

(defclass Transporte_publico
    (is-a Zona_de_interes)
    (role concrete)
    (pattern-match reactive)
)

(defclass Ne398444952874d63b13292500b542a80
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
)

(defclass Preferencia
    (is-a Ne398444952874d63b13292500b542a80)
    (role concrete)
    (pattern-match reactive)
    (multislot respecto_una
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Fuerte
    (is-a Preferencia)
    (role concrete)
    (pattern-match reactive)
)

(defclass Debil
    (is-a Preferencia)
    (role concrete)
    (pattern-match reactive)
)

(defclass Thing
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
)

(defclass Persona
    (is-a Thing)
    (role concrete)
    (pattern-match reactive)
    (slot ocupacion
        (type STRING)
        (create-accessor read-write))
    (slot edad
        (type INTEGER)
        (create-accessor read-write))
)

(defclass Usuario
    (is-a Persona)
    (role concrete)
    (pattern-match reactive)
    (slot tieneCoche
        (type SYMBOL)
        (create-accessor read-write))
    (multislot tiene
        (type INSTANCE)
        (create-accessor read-write))
    (multislot vive_con
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Anciano
    (is-a Usuario)
    (role concrete)
    (pattern-match reactive)
)

(defclass Adulto
    (is-a Usuario)
    (role concrete)
    (pattern-match reactive)
)

(defclass Joven
    (is-a Usuario)
    (role concrete)
    (pattern-match reactive)
)

(defclass Conviviente
    (is-a Persona)
    (role concrete)
    (pattern-match reactive)
)

(defclass Compañero
    (is-a Conviviente)
    (role concrete)
    (pattern-match reactive)
)

(defclass Hijo
    (is-a Conviviente)
    (role concrete)
    (pattern-match reactive)
)

(defclass Pareja
    (is-a Conviviente)
    (role concrete)
    (pattern-match reactive)
)

(defclass Estancia
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot superficieEstancia
        (type FLOAT)
        (create-accessor read-write))
)

(defclass Dormitorio
    (is-a Estancia)
    (role concrete)
    (pattern-match reactive)
)

(defclass Simple
    (is-a Dormitorio)
    (role concrete)
    (pattern-match reactive)
)

(defclass Compartido
    (is-a Dormitorio)
    (role concrete)
    (pattern-match reactive)
    (slot numeroCamas
        (type INTEGER)
        (create-accessor read-write))
    (multislot conCamaMatrimonio
        (type SYMBOL)
        (create-accessor read-write))
)

(defclass Garaje
    (is-a Estancia)
    (role concrete)
    (pattern-match reactive)
)

(defclass Comedor
    (is-a Estancia)
    (role concrete)
    (pattern-match reactive)
    (slot capacidadMesa
        (type INTEGER)
        (create-accessor read-write))
)

(defclass Exterior
    (is-a Estancia)
    (role concrete)
    (pattern-match reactive)
)

(defclass Terraza
    (is-a Exterior)
    (role concrete)
    (pattern-match reactive)
)

(defclass Jardin
    (is-a Exterior)
    (role concrete)
    (pattern-match reactive)
    (slot conHierbaArtificial
        (type SYMBOL)
        (create-accessor read-write))
)

(defclass Balcon
    (is-a Exterior)
    (role concrete)
    (pattern-match reactive)
    (slot conVistasALaCalle
        (type SYMBOL)
        (create-accessor read-write))
)

(defclass Cocina
    (is-a Estancia)
    (role concrete)
    (pattern-match reactive)
    (slot conVitroceramica
        (type SYMBOL)
        (create-accessor read-write))
)

(defclass Baño
    (is-a Estancia)
    (role concrete)
    (pattern-match reactive)
)

(defclass Completo
    (is-a Baño)
    (role concrete)
    (pattern-match reactive)
    (slot tipoDucha
        (type STRING)
        (create-accessor read-write))
)

(defclass De_cortesía
    (is-a Baño)
    (role concrete)
    (pattern-match reactive)
)

(defclass Estado
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
)

(defclass A_reformar
    (is-a Estado)
    (role concrete)
    (pattern-match reactive)
    (slot precioReforma
        (type FLOAT)
        (create-accessor read-write))
)

(defclass Buen_estado
    (is-a Estado)
    (role concrete)
    (pattern-match reactive)
)

(defclass Obra_nueva
    (is-a Estado)
    (role concrete)
    (pattern-match reactive)
)

(defclass N2f8378cad96c4b0ba48b73cbabf4641b
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
)

(defclass Vivienda
    (is-a Ubicacion)
    (role concrete)
    (pattern-match reactive)
    (slot tieneGaraje
        (type SYMBOL)
        (create-accessor read-write))
    (multislot dispone_de
        (type INSTANCE)
        (create-accessor read-write))
    ;;; Una vivienda esta a una cierta distancia de una zona de interés
    (multislot esta_a_cierta_distancia
        (type INSTANCE)
        (create-accessor read-write))
    (multislot formada_por
        (type INSTANCE)
        (create-accessor read-write))
    (multislot se_encuentra_en_un
        (type INSTANCE)
        (create-accessor read-write))
    (slot conElectrodomesticos
        (type SYMBOL)
        (create-accessor read-write))
    (slot conBuenasVistas
        (type SYMBOL)
        (create-accessor read-write))
    (slot permitidoMascotas
        (type SYMBOL)
        (create-accessor read-write))
    (slot accesibleSillaRuedas
        (type SYMBOL)
        (create-accessor read-write))
    (slot amueblada
        (type SYMBOL)
        (create-accessor read-write))
    (slot conAireAcondicionado
        (type SYMBOL)
        (create-accessor read-write))
    (slot precioAlquiler
        (type FLOAT)
        (create-accessor read-write))
    (slot superficieVivienda
        (type FLOAT)
        (create-accessor read-write))
    (slot calleVivienda
        (type STRING)
        (create-accessor read-write))
    (multislot tieneAscensor
        (type SYMBOL)
        (create-accessor read-write))
)

(defclass Unifamiliar
    (is-a Vivienda)
    (role concrete)
    (pattern-match reactive)
    (slot tipoCasa
        (type STRING)
        (create-accessor read-write))
)

(defclass Piso
    (is-a Vivienda)
    (role concrete)
    (pattern-match reactive)
    (multislot esta_en
        (type INSTANCE)
        (create-accessor read-write))
    (slot altura
        (type STRING)
        (create-accessor read-write))
)

(defclass Duplex
    (is-a Piso)
    (role concrete)
    (pattern-match reactive)
)

(defclass Loft
    (is-a Piso)
    (role concrete)
    (pattern-match reactive)
)

(defclass Apartamento
    (is-a Piso)
    (role concrete)
    (pattern-match reactive)
)

(defclass Atico
    (is-a Piso)
    (role concrete)
    (pattern-match reactive)
)

(defclass Comunidad
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot cuenta_con
        (type INSTANCE)
        (create-accessor read-write))
)


;;;;;;;PROGRAMA;;;;;;;

(definstances initialInstances
    (casa1 of Vivienda 
        (calleVivienda "Carrer del Bobi 19") 
        (precioAlquiler 900.0) 
        (superficieVivienda 100.0) 
        (latitudY 10.213)
        (longitudX -12.123)
        (tieneGaraje si)
    )
    (casa2 of Vivienda 
        (calleVivienda "Carrer del Bobina 18")
        (precioAlquiler 1100.0) (superficieVivienda 120.0) 
        (latitudY -2.213) 
        (longitudX -11.3)
        (tieneGaraje no)
    )
    (casa3 of Vivienda 
        (calleVivienda "Carrer del Nashe 1")
        (precioAlquiler 800.0) (superficieVivienda 90.0) 
        (latitudY -12.213) 
        (longitudX 1.3)
        (tieneGaraje no)
    )
    (casa4 of Vivienda 
        (calleVivienda "Avinguda del Wachin 108")
        (precioAlquiler 700.0) (superficieVivienda 60.0) 
        (latitudY 2.213) 
        (longitudX -10.3)
        (tieneGaraje si)
    )
    (casa5 of Vivienda 
        (calleVivienda "Carretera de Jamaica 8")
        (precioAlquiler 1700.0) (superficieVivienda 200.0) 
        (latitudY 4.23) 
        (longitudX -10.3)
        (tieneGaraje si)
    )
)

(deffunction general-question (?pregunta)
    (format t "%s? " ?pregunta)
    (bind ?respuesta (read))
    ?respuesta
)

(deffunction distance (?x1 ?y1 ?x2 ?y2)
    (sqrt (+ (** (abs (- ?x1 ?x2) ) 2 ) (** (abs (- ?y1 ?y2) ) 2 ) ))
)

(deffacts valorsAPreguntar
    (superficie -1.0)
    (pressupost -1.0)
    (edat -1.0)
    (cotxe -1.0)
)

(defrule ini
    (declare (salience 10000))
    =>
    (printout t crlf "-----Cercador d'habitatges-----" crlf crlf)
)

(defrule preguntaEdat
    (declare (salience 9999))
    ?e <- (edat ?x&:(<= ?x 0.0))
    =>
    (bind ?edat (general-question "Quants anys tens"))
    (if (> ?edat 30)
        then 
        (if (> ?edat 65)
        then
            (make-instance usuari of Anciano)
        else
            (make-instance usuari of Adulto)
        )
    else
        (make-instance usuari of Joven)
    )
    (retract ?e)
)

(defrule preguntaSuperficie
    (declare (salience 9997))
    ?s <- (superficie ?x&:(<= ?x 0.0))
    =>
    (retract ?s)
    (assert (superficie (general-question "Superficie minima (metres quadrats)")))
)

(defrule preguntaCotxe
    ?c <- (cotxe ?x&:(<= ?x 0.0))
    ?u <- (object (is-a Usuario))
    =>
    (retract ?c)
    (send [usuari] put-tieneCoche (general-question "Tens cotxe [si/no]"))
)

(defrule preguntaPressupost
    (declare (salience 9998))
    ?p <- (pressupost ?x&:(<= ?x 0.0))
    =>
    (retract ?p)
    (assert (pressupost (general-question "Pressupost max (lloguer mensual)")))
)

(defrule recomanacions
    (superficie ?s2)
    (test (> ?s2 0.0))
    (pressupost ?p2)
    (test (> ?p2 0.0))
    (object (is-a USER) (tieneCoche ?g2))
    (object (is-a Vivienda) 
        (calleVivienda ?c) 
        (superficieVivienda ?s&:(>= ?s ?s2)) 
        (precioAlquiler ?p&:(<= ?p ?p2)) 
        (tieneGaraje ?g&:(eq ?g ?g2)))
    =>
    (printout t ?c " te un preu de " ?p "e amb una superficie de " ?s " m2" crlf)
)

(defrule noRecomanacions
    (superficie ?s2)
    (test (> ?s2 0.0))
    (pressupost ?p2)
    (test (> ?p2 0.0))
    (object (is-a USER) (tieneCoche ?g2))
    (test (neq ?g2 nil))
    (not (object (is-a Vivienda) 
        (calleVivienda ?c) 
        (superficieVivienda ?s&:(>= ?s ?s2)) 
        (precioAlquiler ?p&:(<= ?p ?p2)) 
        (tieneGaraje ?g&:(eq ?g ?g2))))
    =>
    (printout t "No tenim res per recomanar-te" crlf)
)