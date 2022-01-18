;;; ---------------------------------------------------------
;;; urn_webprotege_ontology_a887b531-26c0-45eb-999c-afe05b9d2c0e.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology urn_webprotege_ontology_a887b531-26c0-45eb-999c-afe05b9d2c0e.owl
;;; :Date 18/12/2021 18:56:36

(defclass Preferencia
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot negativa
        (type SYMBOL)
        (create-accessor read-write))
    (slot sobre_una
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

(defclass Caracteristica
    (is-a Thing)
    (role concrete)
    (pattern-match reactive)
    (multislot se_encuentra_en_un
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Estancia
    (is-a Caracteristica)
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
    (slot numeroCamas
        (type INTEGER)
        (create-accessor read-write))
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

(defclass Bano
    (is-a Estancia)
    (role concrete)
    (pattern-match reactive)
)

(defclass Completo
    (is-a Bano)
    (role concrete)
    (pattern-match reactive)
    (slot tipoDucha
        (type STRING)
        (create-accessor read-write))
)

(defclass De_cortesía
    (is-a Bano)
    (role concrete)
    (pattern-match reactive)
)

(defclass Estado
    (is-a Caracteristica)
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

(defclass TipoVivienda
    (is-a Caracteristica)
    (role concrete)
    (pattern-match reactive)
)

(defclass Unifamiliar
    (is-a TipoVivienda)
    (role concrete)
    (pattern-match reactive)
    (slot tipoCasa
        (type STRING)
        (create-accessor read-write))
)

(defclass Piso
    (is-a TipoVivienda)
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

(defclass Distancia
    (is-a Caracteristica)
    (role concrete)
    (pattern-match reactive)
    (slot respecto_una
        (type INSTANCE)
        (create-accessor read-write))
    (slot tipoDistancia
        (type STRING)
        (create-accessor read-write))
)

(defclass N45d904096130412d8188a758f30d1fa7
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
)

(defclass Comunidad
    (is-a N45d904096130412d8188a758f30d1fa7)
    (role concrete)
    (pattern-match reactive)
    (multislot cuenta_con
        (type INSTANCE)
        (create-accessor read-write))
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
    (slot precioReforma
        (type INTEGER)
        (create-accessor read-write))
    (slot altura
        (type STRING)
        (create-accessor read-write))
    (multislot posee
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
    (slot tieneAscensor
        (type SYMBOL)
        (create-accessor read-write))
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
    (multislot tipoTransporte
        (type STRING)
        (create-accessor read-write))
)

(defclass N1cf485ebe59e41278d8d4986830457e7
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
)

(defclass Nucleo_de_Convivencia
    (is-a N1cf485ebe59e41278d8d4986830457e7)
    (role concrete)
    (pattern-match reactive)
    (multislot tiene
        (type INSTANCE)
        (create-accessor read-write))
    (slot numNinos
        (type INTEGER)
        (create-accessor read-write))
    (slot numAdultos
        (type INTEGER)
        (create-accessor read-write))
    (slot numAncianos
        (type INTEGER)
        (create-accessor read-write))
)

(defclass Lugar_de_Trabajo
    (is-a Zona_de_interes)
    (role concrete)
    (pattern-match reactive)
    (slot calle
        (type STRING)
        (create-accessor read-write))
)

(definstances initialInstances

    (garaje1 of Garaje)

    (zonabasquet of Zona_de_deporte
      (campoDeporte "basquet")
    )

    (comedorMesaPequena of Comedor
      (capacidadMesa 2)
      (superficieEstancia 20)
    )

    (comedorGrande of Comedor
      (capacidadMesa 4)
      (superficieEstancia 40)
    )

    (compartidoTRUE of Compartido
      (conCamaMatrimonio TRUE)
    )
    (compartidoFALSE of Compartido
      (conCamaMatrimonio FALSE)
    )

    (jardinHierba of Jardin
      (conHierbaArtificial TRUE)
      (superficieEstancia 20)
    )

    (jardinSinHierba of Jardin
      (conHierbaArtificial FALSE)
      (superficieEstancia 10)
    )


    (balconSinVistas of Balcon
      (conVistasALaCalle TRUE)
      (superficieEstancia 5)
    )

    (balconConVistas of Balcon
      (conVistasALaCalle FALSE)
      (superficieEstancia 5)
    )

    (cocinaConVitroDe30 of Cocina
      (conVitroceramica TRUE)
      (superficieEstancia 30)
    )

    (cocinaSinVitroDe20 of Cocina
      (conVitroceramica FALSE)
      (superficieEstancia 20)
    )

    (dcompartido of Compartido
      (numeroCamas 2)
      (superficieEstancia 20)
    )

    (dnocompartido of Simple
      (numeroCamas 1)
      (superficieEstancia 20)
    )

    (dnocompartidoextensa of Simple
      (numeroCamas 4)
      (superficieEstancia 90)
    )

    (casaunif1 of Unifamiliar
      (tipoCasa aislada)
    )

    (casaunif2 of Unifamiliar
      (tipoCasa pareada)
    )

    (completoPlato of Completo
      (tipoDucha "plato")
    )

    (completoBanera of Completo
      (tipoDucha "banera")
    )

    (transporteAutobus of Transporte_publico
        (tipoTransporte "autobus")
        (latitudY 9.23)
        (longitudX -10.3)
    )

    (transporteMetro of Transporte_publico
        (tipoTransporte "metro")
        (latitudY 5.7)
        (longitudX -60.3)
    )

    (transporteTren of Transporte_publico
        (tipoTransporte "tren")
        (latitudY 2.23)
        (longitudX -20.3)
    )

    (transporteTren of Transporte_publico
        (tipoTransporte "tranvia")
        (latitudY -4.23)
        (longitudX -2.3)
    )

    (piscinaVol30 of Piscina
      (volumenPiscina 30.0)
    )

    (piscinaVol40 of Piscina
      (volumenPiscina 40.0)
    )

    (piscinaVol60 of Piscina
      (volumenPiscina 60.0)
    )

    (obraNueva of Obra_nueva)

    (buenEstado of Buen_estado)

    (aReformarMucho of A_reformar
        (precioReforma 20000)
    )

    (aReformarBastante of A_reformar
        (precioReforma 10000)
    )

    (aReformarPoco of A_reformar
        (precioReforma 2000)
    )

    (casa0 of Vivienda
      (calleVivienda "Carrer del Bobi 20")
      (precioAlquiler 900.0)
      (superficieVivienda 100.0)
      (latitudY 10.213)
      (longitudX -12.123)
      (accesibleSillaRuedas TRUE)
      (conAireAcondicionado FALSE)
      (conBuenasVistas TRUE)
      (conElectrodomesticos TRUE)
      (permitidoMascotas FALSE)
      (tieneAscensor FALSE)
      (posee dnocompartidoextensa dcompartido dnocompartido obraNueva jardinHierba)
    )

    (casa1 of Vivienda
        (calleVivienda "Carrer del Bobi 19")
        (precioAlquiler 900.0)
        (superficieVivienda 100.0)
        (latitudY 10.213)
        (longitudX -12.123)
        (accesibleSillaRuedas TRUE)
        (conAireAcondicionado FALSE)
        (conBuenasVistas TRUE)
        (conElectrodomesticos TRUE)
        (permitidoMascotas FALSE)
        (tieneAscensor FALSE)
        (posee garaje1 dnocompartidoextensa dcompartido dnocompartido obraNueva)
    )

    (casa2 of Vivienda
        (calleVivienda "Carrer del Bobina 18")
        (precioAlquiler 1100.0)
        (superficieVivienda 120.0)
        (latitudY -2.213)
        (longitudX -11.3)
        (accesibleSillaRuedas TRUE)
        (amueblada TRUE)
        (conAireAcondicionado TRUE)
        (conBuenasVistas TRUE)
        (conElectrodomesticos FALSE)
        (altura "piso intermedio")
        (permitidoMascotas TRUE)
        (tieneAscensor FALSE)
        (posee dcompartido buenEstado jardinHierba)
    )

    (casa3 of Vivienda
        (calleVivienda "Carrer del Nashe 1")
        (precioAlquiler 800.0)
        (superficieVivienda 90.0)
        (latitudY -12.213)
        (longitudX 1.3)
        (accesibleSillaRuedas TRUE)
        (amueblada FALSE)
        (conAireAcondicionado TRUE)
        (conBuenasVistas FALSE)
        (conElectrodomesticos TRUE)
        (altura "piso intermedio")
        (permitidoMascotas TRUE)
        (tieneAscensor TRUE)
        (posee dcompartido dnocompartido aReformarBastante jardinHierba)
    )

    (casa4 of Vivienda
        (calleVivienda "Carrer del Wachin 108")
        (precioAlquiler 1100.0)
        (superficieVivienda 120.0)
        (latitudY 99.87)
        (longitudX -11.3)
        (accesibleSillaRuedas TRUE)
        (amueblada TRUE)
        (conAireAcondicionado TRUE)
        (conBuenasVistas TRUE)
        (conElectrodomesticos FALSE)
        (altura "piso intermedio")
        (permitidoMascotas TRUE)
        (tieneAscensor FALSE)
        (posee dcompartido aReformarMucho)
    )

    (casa5 of Vivienda
        (calleVivienda "Carretera de Jamaica 8")
        (precioAlquiler 1700.0)
        (superficieVivienda 200.0)
        (latitudY 4.23)
        (longitudX -100000.3)
        (accesibleSillaRuedas FALSE)
        (amueblada TRUE)
        (conAireAcondicionado TRUE)
        (conBuenasVistas TRUE)
        (conElectrodomesticos TRUE)
        (altura "ultimo piso")
        (permitidoMascotas TRUE)
        (tieneAscensor TRUE)
        (posee dcompartido dnocompartido aReformarPoco)
    )

    (casa6 of Vivienda
        (calleVivienda "Carretera de Jamaica 9")
        (precioAlquiler 1700.0)
        (superficieVivienda 200.0)
        (latitudY 4.23)
        (longitudX -100000.3)
        (accesibleSillaRuedas FALSE)
        (amueblada TRUE)
        (conAireAcondicionado TRUE)
        (conBuenasVistas TRUE)
        (conElectrodomesticos TRUE)
        (altura "ultimo piso")
        (permitidoMascotas TRUE)
        (tieneAscensor TRUE)
        (posee dcompartido dnocompartido zonabasquet buenEstado)
    )

    (casa7 of Vivienda
        (calleVivienda "Carretera de Salamin 69")
        (precioAlquiler 1000.0)
        (superficieVivienda 300.0)
        (latitudY 9.23)
        (longitudX -1.3)
        (accesibleSillaRuedas TRUE)
        (amueblada TRUE)
        (conAireAcondicionado TRUE)
        (conBuenasVistas TRUE)
        (conElectrodomesticos TRUE)
        (altura "piso intermedio")
        (permitidoMascotas TRUE)
        (tieneAscensor FALSE)
        (posee dcompartido comedorMesaPequena buenEstado)
    )

    (casa8 of Vivienda
        (calleVivienda "Carretera de Salamin 70")
        (precioAlquiler 1000.0)
        (superficieVivienda 300.0)
        (latitudY 9.23)
        (longitudX -1.3)
        (accesibleSillaRuedas TRUE)
        (amueblada TRUE)
        (conAireAcondicionado TRUE)
        (conBuenasVistas TRUE)
        (conElectrodomesticos TRUE)
        (altura "piso intermedio")
        (permitidoMascotas TRUE)
        (tieneAscensor FALSE)
        (posee dcompartido comedorGrande aReformarPoco)
    )

    (casa9 of Vivienda
        (calleVivienda "Carrer or de la Vida 63")
        (precioAlquiler 5000.0)
        (superficieVivienda 40)
        (tieneAscensor FALSE)
        (latitudY 8.2)
        (longitudX 7.7)
        (accesibleSillaRuedas FALSE)
        (amueblada TRUE)
        (conAireAcondicionado TRUE)
        (conBuenasVistas TRUE)
        (conElectrodomesticos TRUE)
        (altura "primer piso")
        (permitidoMascotas FALSE)
        (posee dcompartido aReformarMucho)
    )

    (casa10 of Vivienda
        (calleVivienda "Carrer or de la Vida 64")
        (precioAlquiler 5000.0)
        (superficieVivienda 900)
        (tieneAscensor TRUE)
        (latitudY 8.2)
        (longitudX 7.7)
        (accesibleSillaRuedas TRUE)
        (amueblada TRUE)
        (conAireAcondicionado TRUE)
        (conBuenasVistas TRUE)
        (conElectrodomesticos TRUE)
        (altura "primer piso")
        (permitidoMascotas TRUE)
        (posee garaje1 dcompartido aReformarMucho)
    )
    ;InstÃ ncies pels jocs de proba

       (zona_verde of Zona_verde
           (latitudY 8.1)
           (longitudX 7.8)
       )

       (transporteMetro of Transporte_publico
           (tipoTransporte "metro")
           (latitudY 8.0)
           (longitudX 7.8)
       )

       (buen_estado of Buen_estado)

       (apartamentoPrimerPiso of Apartamento
           (altura "primer piso")
       )

       (casaIdealAncianos of Vivienda
           (calleVivienda "Calle de los Pinos 33")
           (precioAlquiler 5000.0)
           (superficieVivienda 100)
           (tieneAscensor TRUE)
           (latitudY 8.2)
           (longitudX 7.7)
           (accesibleSillaRuedas TRUE)
           (amueblada TRUE)
           (conAireAcondicionado TRUE)
           (conBuenasVistas TRUE)
           (conElectrodomesticos TRUE)
           (permitidoMascotas TRUE)
           (posee garaje1 dcompartido buen_estado apartamentoPrimerPiso)
       )




       (zona_de_arte_y_cultura of De_arte_y_cultura
           (latitudY -20.0)
           (longitudX -30.5)
       )

       (jardinHierba of Jardin
         (conHierbaArtificial TRUE)
         (superficieEstancia 20)
       )

       (casaIdealRicachonManitas of Vivienda
           (calleVivienda "Calle del oro 45")
           (precioAlquiler 5000.0)
           (superficieVivienda 900)
           (tieneAscensor FALSE)
           (latitudY -20.2)
           (longitudX -30.7)
           (accesibleSillaRuedas FALSE)
           (precioReforma 10000.0)
           (amueblada FALSE)
           (conAireAcondicionado TRUE)
           (conBuenasVistas TRUE)
           (conElectrodomesticos TRUE)
           (permitidoMascotas FALSE)
           (posee dcompartido buen_estado apartamentoPrimerPiso jardinHierba)
       )

       ( dormitorioSimple of Simple
           (superficieEstancia 25.0)
       )

       (dormitorioCompartido of Compartido
           (superficieEstancia 30.0)
           (numeroCamas 1)
           (conCamaMatrimonio TRUE)
       )

       (Lugar_de_Trabajo1 of Lugar_de_Trabajo
           (latitudY 9.0)
           (longitudX 9.5)
       )

       (casaIdealFamiliaDeTres of Vivienda
           (calleVivienda "Calle del tren 22")
           (precioAlquiler 2000.0)
           (superficieVivienda 900)
           (tieneAscensor FALSE)
           (latitudY 9.2)
           (longitudX 9.7)
           (accesibleSillaRuedas FALSE)
           (precioReforma 10000.0)
           (amueblada FALSE)
           (conAireAcondicionado TRUE)
           (conBuenasVistas TRUE)
           (conElectrodomesticos TRUE)
           (permitidoMascotas FALSE)
           (posee buen_estado dormitorioSimple dormitorioCompartido Lugar_de_Trabajo1 garaje1)
       )


       (dormitorioSimpleGrande of Simple
           (superficieEstancia 30)
       )

       (BanoCompletoPlato of Completo
           (superficieEstancia 20)
           (tipoDucha "plato")
       )

       (balconPequeno of Balcon
           (superficieEstancia 5)
           (conVistasALaCalle TRUE)
       )

       (zonaOcio of De_ocio
           (latitudY -30.0)
           (longitudX -40.5)
       )


       (casaIdealDormilonDebil of Vivienda
           (calleVivienda "Calle snorlax 77")
           (precioAlquiler 1000.0)
           (superficieVivienda 900)
           (tieneAscensor FALSE)
           (latitudY 22.2)
           (longitudX 22.7)
           (accesibleSillaRuedas FALSE)
           (precioReforma 10000.0)
           (amueblada FALSE)
           (conAireAcondicionado TRUE)
           (conBuenasVistas TRUE)
           (conElectrodomesticos TRUE)
           (permitidoMascotas FALSE)
           (posee buen_estado dormitorioSimpleGrande BanoCompletoPlato balconPequeno)
       )


       (primeraNecesidad1 of De_primera_necesidad
           (latitudY -88.0)
           (longitudX -88.5)
       )

       (comedorMuyGrande of Comedor
           (capacidadMesa 10)
           (superficieEstancia 30)
       )

       (loftUltimoPiso of Loft
           (altura "ultimo piso")
       )

       (obraNueva of Obra_nueva)


       (casaIdealTiquismiquisConInvitados of Vivienda
           (calleVivienda "Calle tiquismiquis 77")
           (precioAlquiler 800.0)
           (superficieVivienda 300)
           (tieneAscensor TRUE)
           (latitudY -88.2)
           (longitudX -88.7)
           (accesibleSillaRuedas FALSE)
           (precioReforma 10000.0)
           (amueblada FALSE)
           (conAireAcondicionado TRUE)
           (conBuenasVistas FALSE)
           (conElectrodomesticos TRUE)
           (permitidoMascotas FALSE)
           (posee buen_estado dormitorioSimpleGrande obraNueva loftUltimoPiso comedorMuyGrande)
       )

       (balconConVistas of Balcon
         (conVistasALaCalle FALSE)
         (superficieEstancia 5)
       )

       (casaIdealDonVisitas of Vivienda
           (calleVivienda "Calle Buenavista 37")
           (precioAlquiler 700.0)
           (superficieVivienda 200)
           (tieneAscensor FALSE)
           (latitudY -88.2)
           (longitudX -88.7)
           (accesibleSillaRuedas TRUE)
           (precioReforma 10000.0)
           (amueblada FALSE)
           (conAireAcondicionado TRUE)
           (conBuenasVistas TRUE)
           (conElectrodomesticos TRUE)
           (permitidoMascotas TRUE)
           (posee buen_estado balconConVistas)
       )

    ;; PREFERENCIAS ;;

    ;; CARACTERISTICAS PREFERENCIAS ;;

    (prefQuiereMetroCerca of Distancia
        (tipoDistancia "Cerca")
        (respecto_una transporteMetro)
    )

    (prefQuiereMetroMedia of Distancia
        (tipoDistancia "Media")
        (respecto_una transporteMetro)
    )

    (prefQuiereMetroLejos of Distancia
        (tipoDistancia "Lejos")
        (respecto_una transporteMetro)
    )

    (prefQuiereZonaVerdeCerca of Distancia
        (tipoDistancia "Cerca")
        (respecto_una zona_Verde)
    )

    (prefQuiereBuenEstado of Buen_estado)

    (prefQuiereApartamentoPrimerPiso of Apartamento
        (altura "primer piso")
    )

    (prefQuiereReformarCaro of A_reformar
        (precioReforma 10000.0)
    )

    (prefQuiereZonaVerdeLejos of Distancia
        (tipoDistancia "Lejos")
        (respecto_una zona_Verde)
    )

    (prefQuiereDeArteYCulturaCerca of Distancia
        (tipoDistancia "Cerca")
        (respecto_una zona_de_arte_y_cultura)
    )

    (prefQuiereJardin of Jardin
        (superficieEstancia 1.0)
    )


    (prefQuiereDormitorioSimple of Simple
        (superficieEstancia 25.0)
    )

    (prefQuiereDormitorioCompartido of Compartido
        (superficieEstancia 30.0)
        (numeroCamas 1)
        (conCamaMatrimonio TRUE)
    )

    (prefQuiereLugarCercaTrabajo of Distancia
        (tipoDistancia "Cerca")
        (respecto_una Lugar_de_Trabajo)
    )

    (prefDormitorioSimpleGrande of Simple
        (superficieEstancia 50)
        (superficieEstancia 25)
    )

    (prefCompletoPlato of Completo
        (superficieEstancia 20)
        (tipoDucha "plato")
    )

    (prefBalconPequeno of Balcon
        (superficieEstancia 5)
        (conVistasALaCalle TRUE)
    )

    (prefZonaOcioLejos of Distancia
        (tipoDistancia "Lejos")
        (respecto_una De_ocio)
    )

    (prefPrimeraNecesidadCerca of Distancia
        (tipoDistancia "Cerca")
        (respecto_una De_primera_necesidad)
    )

    (prefComedorMuyGrande of Comedor
        (capacidadMesa 10)
        (superficieEstancia 30)
    )

    (prefLoftUltimoPiso of Loft
        (altura "ultimo piso")
    )

    (prefQuiereObraNueva of Obra_nueva)



    (prefBalconConVistas of Balcon
      (conVistasALaCalle FALSE)
      (superficieEstancia 5)
    )

    (prefViviendaBuenasVistas of Vivienda
        (conBuenasVistas TRUE)
    )

    (prefPermiteMascotas of Vivienda
        (permitidoMascotas TRUE)
    )

    (prefAccesibleSillaRuedas of Vivienda
        (accesibleSillaRuedas TRUE)
    )


    (prefQuiereBalconGrande of Balcon
        (superficieEstancia 10)
        (conVistasALaCalle TRUE)
    )



    (prefQuiereBuenEstado of Buen_estado)


    (prefQuiereReformaMedia of A_reformar
        (precioReforma 10000)
    )

    (prefQuiereReformaBaja of A_reformar
        (precioReforma 100)
    )

)


;;;;;;;PROGRAMA;;;;;;;

(defmodule MAIN (export ?ALL))
(defmodule RECOPILACIODADES (export ?ALL) (import MAIN ?ALL))
(defmodule ABSTRACCIO (export ?ALL) (import RECOPILACIODADES ?ALL))


(deffunction RECOPILACIODADES::crearConjuntoPreferencias1 ()
    (make-instance pref-1 of Debil
        (sobre_una prefQuiereMetroCerca)
        (negativa esNegativa))
)

(deffunction RECOPILACIODADES::Ancianos()
    (make-instance prefQuiereZonaVerdeCerca1 of Fuerte
        (sobre_una prefQuiereZonaVerdeCerca)
        (negativa FALSE))
    (make-instance prefQuiereMetroCerca1 of Debil
        (sobre_una prefQuiereMetroCerca)
        (negativa FALSE))
    (make-instance prefQuiereBuenEstado1 of Debil
        (sobre_una prefQuiereBuenEstado)
        (negativa FALSE))
    (make-instance prefQuiereApartamentoPrimerPiso1 of Fuerte
        (sobre_una prefQuiereApartamentoPrimerPiso)
        (negativa FALSE))
    (assert (pressupost 5000))      
    (assert (superficie 100))  
)

(deffunction RECOPILACIODADES::Ricachon_manitas()
    (make-instance prefQuiereReformarCaro1 of Fuerte
        (sobre_una prefQuiereReformarCaro)
        (negativa FALSE))
    (make-instance prefQuiereZonaVerdeLejos1 of Debil
        (sobre_una prefQuiereZonaVerdeLejos)
        (negativa FALSE))
    (make-instance prefQuiereDeArteYCulturaCerca1 of Fuerte
        (sobre_una prefQuiereDeArteYCulturaCerca)
        (negativa FALSE))
    (make-instance prefQuiereJardin1 of Debil
        (sobre_una prefQuiereJardin)
        (negativa FALSE))
    (assert (pressupost 10000))      
    (assert (superficie 900))  
)

(deffunction RECOPILACIODADES::Familia_de_tres()
    (make-instance prefQuiereDormitorioSimple1 of Fuerte
        (sobre_una prefQuiereDormitorioSimple)
        (negativa FALSE))
    (make-instance prefQuiereDormitorioCompartido1 of Fuerte
        (sobre_una prefQuiereDormitorioCompartido)
        (negativa FALSE))
    (make-instance prefQuiereLugarCercaTrabajo1 of Debil
        (sobre_una prefQuiereDeArteYCulturaCerca)
        (negativa FALSE))
    (make-instance garaje2 of Debil
        (sobre_una garaje1)
        (negativa FALSE))
    (assert (pressupost 3000))      
    (assert (superficie 200))  
)

(deffunction RECOPILACIODADES::Dormilon_debil()
    (make-instance prefDormitorioSimpleGrande1 of Debil
        (sobre_una prefDormitorioSimpleGrande)
        (negativa FALSE))
    (make-instance prefCompletoPlato1 of Debil
        (sobre_una prefCompletoPlato)
        (negativa FALSE))
    (make-instance prefBalconPequeno1 of Debil
        (sobre_una prefBalconPequeno)
        (negativa FALSE))
    (make-instance prefZonaOcioLejos1 of Debil
        (sobre_una prefZonaOcioLejos)
        (negativa FALSE))
    (assert (pressupost 2000))      
    (assert (superficie 600))  
)

 (deffunction RECOPILACIODADES::Tiquismiquis_con_invitados()
    (make-instance prefPrimeraNecesidadCerca1 of Fuerte
        (sobre_una prefPrimeraNecesidadCerca)
        (negativa FALSE))
    (make-instance prefComedorMuyGrande1 of Fuerte
        (sobre_una prefComedorMuyGrande)
        (negativa FALSE))
    (make-instance prefLoftUltimoPiso1 of Fuerte
        (sobre_una prefLoftUltimoPiso)
        (negativa FALSE))
    (make-instance prefQuiereObraNueva1 of Fuerte
        (sobre_una prefQuiereObraNueva)
        (negativa FALSE))
    (assert (pressupost 1000))      
    (assert (superficie 250))  
)

(deffunction RECOPILACIODADES::Don_Vistas()
    (make-instance prefBalconConVistas1 of Fuerte
        (sobre_una prefBalconConVistas)
        (negativa FALSE))
    (make-instance prefViviendaBuenasVistas1 of Fuerte
        (sobre_una prefViviendaBuenasVistas)
        (negativa FALSE))
    (make-instance prefPermiteMascotas1 of Fuerte
        (sobre_una prefPermiteMascotas)
        (negativa FALSE))
    (make-instance prefAccesibleSillaRuedas1 of Debil
        (sobre_una prefAccesibleSillaRuedas)
        (negativa FALSE))
    (assert (pressupost 1000))      
    (assert (superficie 150))  
)



(deffunction RECOPILACIODADES::pregunta-general (?pregunta)
    (format t "%s? " ?pregunta)
    (bind ?respuesta (read))
    ?respuesta
)

(deffunction MAIN::distance (?x1 ?y1 ?x2 ?y2)
    (sqrt (+ (** (abs (- ?x1 ?x2) ) 2 ) (** (abs (- ?y1 ?y2) ) 2 ) ))
)

(deftemplate abstraccioVivienda
    (slot carrer)
    (multislot motiusNoRecomanacio (type STRING))
    (multislot motiusRecomanacio (type STRING))
    (multislot motiusRecomanacioPlus (type STRING))
    (multislot motiusFortsNoRecomanacio (type STRING))
    (slot completada)
)

(defrule MAIN::ini
    (declare (salience 10000))
    =>
    (printout t crlf "-----Cercador d'habitatges-----" crlf crlf)
    (focus RECOPILACIODADES)
)

(deffunction RECOPILACIODADES::crearConjuntoPreferencias1 ()
    (make-instance pref-1 of Debil
        (sobre_una prefQuiereObraNueva)
        (negativa FALSE))

    (make-instance pref-2 of Debil
        (sobre_una prefQuiereJardin)
        (negativa FALSE)
    )

    (make-instance pref-3 of Debil
        (sobre_una prefPropMetro)
        (negativa FALSE)
    )

    (focus ABSTRACCIO)
)

(defrule RECOPILACIODADES::inicializarConjunto
    (declare (salience 100))
    =>
    (bind ?nConjunto 5)
    (if (eq ?nConjunto 1) then
        (Ancianos)
    )
    (if (eq ?nConjunto 2) then
        (Ricachon_manitas)
    )
    (if (eq ?nConjunto 3) then
        (Familia_de_tres)
    )
    (if (eq ?nConjunto 4) then
        (Dormilon_debil)
    )
    (if (eq ?nConjunto 5) then
        (Tiquismiquis_con_invitados)
    )
    (if (eq ?nConjunto 6) then
        (Don_Vistas)
    )
    (focus ABSTRACCIO)
)

(defrule RECOPILACIODADES::calcularDistancies
    (declare (salience 100))
    ?v <- (object (is-a Vivienda) (longitudX ?x1) (latitudY ?y1))
    ?z <- (object (is-a Zona_de_interes) (longitudX ?x2) (latitudY ?y2))
    =>
    (bind ?distance (distance ?x1 ?y1 ?x2 ?y2))
    (bind ?caracteristicas (send ?v get-posee))
    (bind ?d (make-instance (sym-cat dist- (gensym)) of Distancia))
    (send ?d put-respecto_una ?z)
    (if (>= ?distance 500) then
        (if (>= ?distance 1000) then
            (send (instance-name ?d) put-tipoDistancia "Lejana")
        else
            (send (instance-name ?d)  put-tipoDistancia "Media")
        )
    else
        (send (instance-name ?d)  put-tipoDistancia "Cerca")
    )
    (send ?v put-posee (insert$ (send ?v get-posee) (+ (length$ ?caracteristicas) 1) ?d))
)

(defrule ABSTRACCIO::crearAbstraccioVivienda
    (declare (salience 2))
    ?v <- (object (is-a Vivienda))
    =>
    (assert (abstraccioVivienda (carrer (send ?v get-calleVivienda)) (completada no)))
)

(deffunction ABSTRACCIO::esInstanciaDe (?inst ?nomClasse)
    (bind ?superClasses (class-superclasses (class ?inst) inherit))
    (bind ?trobat 0)
    (bind ?i 1)
    (if (eq (class ?inst) ?nomClasse) then
        (bind ?trobat (+ ?trobat 1))
    )
    (while (and (= ?trobat 0) (<= ?i (length$ ?superClasses))) do
        (if (eq (nth$ ?i ?superClasses) ?nomClasse) then
            (bind ?trobat (+ ?trobat 1))
        )
        (bind ?i (+ ?i 1))
    )
    (return ?trobat)
)

(deffunction buscarCaracteristiques (?vivenda ?nomClasse)
    (bind ?caracteristicas (send ?vivenda get-posee))
    (bind ?i 1)
    (bind ?ret (create$))
    (while (<= ?i (length$ ?caracteristicas)) do
        (bind ?caracteristica (instance-name (nth$ ?i ?caracteristicas)))
        (if (= (esInstanciaDe ?caracteristica ?nomClasse) 1) then
            (bind ?ret (insert$ ?ret 1 ?caracteristica))
        )
        (bind ?i (+ ?i 1))
    )
    ?ret
)

(defrule ABSTRACCIO::regla
    (declare (salience 1))
    ?a <- (abstraccioVivienda (completada ?completada&:(eq ?completada no)) (carrer ?carrer)
        (motiusNoRecomanacio $?mNoRec)
        (motiusRecomanacio $?mRec)
        (motiusRecomanacioPlus $?mRecPlus)
        (motiusFortsNoRecomanacio $?mFNoRec))
    (pressupost ?pressupost)
    (superficie ?superficie)
    =>
    (bind ?v  (nth$ 1 (find-instance ((?v Vivienda)) (eq ?v:calleVivienda ?carrer))))
    (bind ?preferencies (find-all-instances ((?inst Preferencia)) TRUE))
    (bind ?i 1)

    (bind ?midamNoRec 0)
    (bind ?midamRec 0)
    (bind ?midamRecPlus 0)
    (bind ?midamFNoRec 0)

    (printout t ?carrer crlf)

    
    (if (>= ?pressupost (send ?v get-precioAlquiler)) then
        (printout t "Preferencia Complerta: Es buscava pressupost " ?pressupost " i el preu del lloguer es " (send ?v get-precioAlquiler) crlf)
        (bind ?midamRec (+ ?midamRec 1))
    else
        (printout t "Preferencia Forta No Complerta: Es buscava pressupost " ?pressupost " i el preu del lloguer es " (send ?v get-precioAlquiler) crlf)
        (bind ?midamFNoRec (+ ?midamFNoRec 1))
    )

    (if (<= ?superficie (send ?v get-superficieVivienda)) then
        (printout t "Preferencia Complerta: Es buscava superficie " ?superficie " i la superficie de la vivenda es " (send ?v get-superficieVivienda) crlf)
        (bind ?midamRec (+ ?midamRec 1))
    else
        (printout t "Preferencia Forta No Complerta: Es buscava superficie " ?superficie " i la superficie de la vivenda es " (send ?v get-superficieVivienda) crlf)
        (bind ?midamFNoRec (+ ?midamFNoRec 1))
    )

    (while (<= ?i (length$ ?preferencies)) do
        (bind ?preferencia (nth$ ?i ?preferencies))
        (bind ?caracteristicaPref (send ?preferencia get-sobre_una))

        (bind ?tipusPreferencia (class ?preferencia))
        (bind ?preferenciaNegativa (send ?preferencia get-negativa))

        (if (eq (esInstanciaDe ?caracteristicaPref Estado) 1) then
            (bind ?caracteristiques (buscarCaracteristiques ?v Estado))
            (bind ?estadoVivienda (nth$ 1 ?caracteristiques))
            (if (eq (class ?caracteristicaPref) Obra_nueva) then
                (if (eq (class ?estadoVivienda) Obra_nueva) then
                    (bind ?motiu "Es buscava Obra Nueva i la vivienda es una Obra Nueva")
                    (printout t "Preferencia Complerta: " ?motiu crlf)
                    (bind ?midamRec (+ ?midamRec 1))
                )
                (if (eq (class ?estadoVivienda) Buen_estado) then
                    (bind ?motiu "Es buscava Obra nueva i la vivienda esta en Buen estado")
                    (if (eq (class ?preferencia) Debil) then
                        (printout t "Preferencia Debil No Complerta: " ?motiu crlf)
                        (bind ?midamNoRec (+ ?midamNoRec 1))
                        else
                        (printout t "Preferencia Forta No Complerta: " ?motiu crlf)
                        (bind ?midamFNoRec (+ ?midamFNoRec 1))
                    )
                )
                (if (eq (class ?estadoVivienda) A_reformar) then
                    (bind ?motiu "Es buscava Obra nueva i la vivienda esta per Reformar")
                    (if (eq (class ?preferencia) Debil) then
                        (printout t "Preferencia Debil No Complerta: " ?motiu crlf)
                        (bind ?midamNoRec (+ ?midamNoRec 1))
                        else
                        (printout t "Preferencia Forta No Complerta: " ?motiu crlf)
                        (bind ?midamFNoRec (+ ?midamFNoRec 1))
                    )
                )
            )
            (if (eq (class ?caracteristicaPref) Buen_estado) then
                (if (eq (class ?estadoVivienda) Obra_nueva) then
                    (bind ?motiu "Es buscava vivienda en Buen estado i la vivienda es una Obra Nueva")
                    (printout t "Preferencia Complerta amb un Plus: " ?motiu crlf)
                    (bind ?midamRecPlus (+ ?midamRecPlus 1))
                )
                (if (eq (class ?estadoVivienda) Buen_estado) then
                    (bind ?motiu "Es buscava vivienda en Buen estado i la vivienda esta en Buen estado")
                    (printout t "Preferencia no Complerta: " ?motiu crlf)
                    (bind ?midamRec (+ ?midamRec 1))
                )
                (if (eq (class ?estadoVivienda) A_reformar) then
                    (if (eq (class ?preferencia) Debil) then
                        (printout t "Preferencia Debil No Complerta: " ?motiu crlf)
                        (bind ?midamNoRec (+ ?midamNoRec 1))
                        else
                        (printout t "Preferencia Forta No Complerta: " ?motiu crlf)
                        (bind ?midamFNoRec (+ ?midamFNoRec 1))
                    )
                )
            )
            (if (eq (class ?caracteristicaPref) A_reformar) then
                (if (eq (class ?estadoVivienda) Obra_nueva) then
                    (bind ?motiu "Es buscava vivienda per Reformar i la vivienda es una Obra Nueva")
                    (printout t "Preferencia Complerta amb un Plus: " ?motiu crlf)
                    (bind ?midamRecPlus (+ ?midamRecPlus 1))
                )
                (if (eq (class ?estadoVivienda) Buen_estado) then
                    (bind ?motiu "Es buscava vivienda per Reformar i la vivienda esta en Buen estado")
                    (printout t "Preferencia Complerta amb un Plus: " ?motiu crlf)
                    (bind ?midamRecPlus (+ ?midamRecPlus 1))
                )
                (if (eq (class ?estadoVivienda) A_reformar) then
                    (bind ?dinersReformar (send ?caracteristicaPref get-precioReforma))
                    (bind ?preuReforma (send ?estadoVivienda get-precioReforma))
                    (bind ?diferenciaPreus (- ?dinersReformar ?preuReforma))
                    (if (>= ?diferenciaPreus 5000) then
                        (bind ?motiu "Es buscava vivienda per Reformar per " ?dinersReformar " euros com a maxim i "
                        "la vivienda es pot Reformar per " ?preuReforma " euros, una diferencia de mes de 5000 euros")
                        (printout t "Preferencia Complerta amb un Plus: " ?motiu crlf)
                        (bind ?midamRecPlus (+ ?midamRecPlus 1))
                    )
                    (if (>= ?diferenciaPreus 0) then
                        (bind ?motiu "Es buscava vivienda per Reformar per " ?dinersReformar " euros com a maxim i "
                        "la vivienda es pot Reformar per " ?preuReforma " euros")
                        (printout t "Preferencia Complerta: " ?motiu crlf)
                        (bind ?midamRec (+ ?midamRec 1))
                    )
                    (if (< ?diferenciaPreus 0) then
                        (if (eq (class ?preferencia) Debil) then
                            (bind ?motiu "Es buscava vivienda per Reformar per " ?dinersReformar " euros com a maxim i "
                            "la vivienda es pot Reformar per " ?preuReforma " euros")
                            (printout t "Preferencia Debil No Complerta: " ?motiu crlf)
                            (bind ?midamNoRec (+ ?midamNoRec 1))
                            else
                            (bind ?motiu "Es buscava vivienda per Reformar per " ?dinersReformar " euros com a maxim i "
                            "la vivienda es pot Reformar per " ?preuReforma " euros")
                            (printout t "Preferencia Forta No Complerta: " ?motiu crlf)
                            (bind ?midamFNoRec (+ ?midamFNoRec 1))
                        )
                    )
                )
            )
        )
        (if (= (esInstanciaDe ?caracteristicaPref Estancia) 1) then
            (if (= (esInstanciaDe ?caracteristicaPref Exterior) 1) then
                (if (= (esInstanciaDe ?caracteristicaPref Balcon) 1) then
                    (bind ?nBalcons (length$ (buscarCaracteristiques ?v Balcon)))
                    (if (> ?nBalcons 0) then
                        (if (eq ?tipusPreferencia Fuerte) then
                            (if (eq ?preferenciaNegativa TRUE) then
                                (bind ?motiu "Es buscava vivienda sense Balco i en te")
                                (printout t "Preferencia Forta No Complerta: " ?motiu crlf)
                                (bind ?midamFNoRec (+ ?midamFNoRec 1))
                            else
                                (bind ?motiu "Es buscava vivienda amb Balco i en te")
                                (printout t "Preferencia Complerta: " ?motiu crlf)
                                (bind ?midamRec (+ ?midamRec 1))
                            )
                        else
                            (if (eq ?preferenciaNegativa TRUE) then
                                (bind ?motiu "Es buscava vivienda sense Balco i no en te")
                                (printout t "Preferencia Complerta: " ?motiu crlf)
                                (bind ?midamRec (+ ?midamRec 1))
                            else
                                (bind ?motiu "Es buscava vivienda amb Balco i no en te")
                                (printout t "Preferencia Forta No Complerta: " ?motiu crlf)
                                (bind ?midamFNoRec (+ ?midamFNoRec 1))
                            )
                        )
                    else
                        (if (eq ?tipusPreferencia Fuerte) then
                            (if (eq ?preferenciaNegativa TRUE) then
                                (bind ?motiu "Es buscava vivienda sense Balco i no en te")
                                (printout t "Preferencia Complerta: " ?motiu crlf)
                                (bind ?midamRec (+ ?midamRec 1))
                            else
                                (bind ?motiu "Es buscava vivienda amb Balco i no en te")
                                (printout t "Preferencia Forta No Complerta: " ?motiu crlf)
                                (bind ?midamFNoRec (+ ?midamFNoRec 1))
                            )
                        else
                            (if (eq ?preferenciaNegativa TRUE) then
                                (bind ?motiu "Es buscava vivienda sense Balco i no en te")
                                (printout t "Preferencia Complerta amb un Plus: " ?motiu crlf)
                                (bind ?midamRecPlus (+ ?midamRecPlus 1))
                            else
                                (bind ?motiu "Es buscava vivienda amb Balco i no en te")
                                (printout t "Preferencia Debil No Complerta: " ?motiu crlf)
                                (bind ?midamNoRec (+ ?midamNoRec 1))
                            )
                        )
                    )
                )
                (if (= (esInstanciaDe ?caracteristicaPref Terraza) 1) then
                    (bind ?nTerraza (length$ (buscarCaracteristiques ?v Terraza)))
                    (if (> ?nTerraza 0) then
                        (if (eq ?tipusPreferencia Fuerte) then
                            (if (eq ?preferenciaNegativa TRUE) then
                                (bind ?motiu "Es buscava vivienda sense Terraza i en te")
                                (printout t "Preferencia Forta No Complerta: " ?motiu crlf)
                                (bind ?midamFNoRec (+ ?midamFNoRec 1))
                            else
                                (bind ?motiu "Es buscava vivienda amb Terraza i en te")
                                (printout t "Preferencia Complerta: " ?motiu crlf)
                                (bind ?midamRec (+ ?midamRec 1))
                            )
                        else
                            (if (eq ?preferenciaNegativa TRUE) then
                                (bind ?motiu "Es buscava vivienda sense Terraza i no en te")
                                (printout t "Preferencia Complerta: " ?motiu crlf)
                                (bind ?midamRec (+ ?midamRec 1))
                            else
                                (bind ?motiu "Es buscava vivienda amb Terraza i no en te")
                                (printout t "Preferencia Forta No Complerta: " ?motiu crlf)
                                (bind ?midamFNoRec (+ ?midamFNoRec 1))
                            )
                        )
                    else
                        (if (eq ?tipusPreferencia Fuerte) then
                            (if (eq ?preferenciaNegativa TRUE) then
                                (bind ?motiu "Es buscava vivienda sense Terraza i no en te")
                                (printout t "Preferencia Complerta: " ?motiu crlf)
                                (bind ?midamRec (+ ?midamRec 1))
                            else
                                (bind ?motiu "Es buscava vivienda amb Terraza i no en te")
                                (printout t "Preferencia Forta No Complerta: " ?motiu crlf)
                                (bind ?midamFNoRec (+ ?midamFNoRec 1))
                            )
                        else
                            (if (eq ?preferenciaNegativa TRUE) then
                                (bind ?motiu "Es buscava vivienda sense  Terraza i no en te")
                                (printout t "Preferencia Complerta amb un Plus: " ?motiu crlf)
                                (bind ?midamRecPlus (+ ?midamRecPlus 1))
                            else
                                (bind ?motiu "Es buscava vivienda amb Terraza i no en te")
                                (printout t "Preferencia Debil No Complerta: " ?motiu crlf)
                                (bind ?midamNoRec (+ ?midamNoRec 1))
                            )
                        )
                    )
                )
                (if (= (esInstanciaDe ?caracteristicaPref Jardin) 1) then
                    (bind ?nJardines (length$ (buscarCaracteristiques ?v Jardin)))
                    (if (> ?nJardines 0) then
                        (if (eq ?tipusPreferencia Fuerte) then
                            (if (eq ?preferenciaNegativa TRUE) then
                                (bind ?motiu "Es buscava vivienda sense Jardin i en te")
                                (printout t "Preferencia Forta No Complerta: " ?motiu crlf)
                                (bind ?midamFNoRec (+ ?midamFNoRec 1))
                            else
                                (bind ?motiu "Es buscava vivienda amb Jardin i en te")
                                (printout t "Preferencia Complerta: " ?motiu crlf)
                                (bind ?midamRec (+ ?midamRec 1))
                            )
                        else
                            (if (eq ?preferenciaNegativa TRUE) then
                                (bind ?motiu "Es buscava vivienda sense Jardin i no en te")
                                (printout t "Preferencia Complerta: " ?motiu crlf)
                                (bind ?midamRec (+ ?midamRec 1))
                            else
                                (bind ?motiu "Es buscava vivienda amb Jardin i en te")
                                (printout t "Preferencia Complerta: " ?motiu crlf)
                                (bind ?midamRec (+ ?midamRec 1))
                            )
                        )
                    else
                        (if (eq ?tipusPreferencia Fuerte) then
                            (if (eq ?preferenciaNegativa TRUE) then
                                (bind ?motiu "Es buscava vivienda sense Jardin i no en te")
                                (printout t "Preferencia Complerta: " ?motiu crlf)
                                (bind ?midamRec (+ ?midamRec 1))
                            else
                                (bind ?motiu "Es buscava vivienda amb Jardin i no en te")
                                (printout t "Preferencia Forta No Complerta: " ?motiu crlf)
                                (bind ?midamFNoRec (+ ?midamFNoRec 1))
                            )
                        else
                            (if (eq ?preferenciaNegativa TRUE) then
                                (bind ?motiu "Es buscava vivienda sense Jardin i no en te")
                                (printout t "Preferencia Complerta amb un Plus: " ?motiu crlf)
                                (bind ?midamRecPlus (+ ?midamRecPlus 1))
                            else
                                (bind ?motiu "Es buscava vivienda amb Jardin i no en te")
                                (printout t "Preferencia Debil No Complerta: " ?motiu crlf)
                                (bind ?midamNoRec (+ ?midamNoRec 1))
                            )
                        )
                    )
                )
            )
        )
        (if (eq (esInstanciaDe ?caracteristicaPref Distancia) 1) then
            (bind ?zonaInteres (send ?caracteristicaPref get-respecto_una))

            (bind ?distancias (buscarCaracteristiques ?v Distancia))
            (bind ?distanciaAZonaInteres 0)
            (bind ?j 1)
            (while (<= ?j (length$ ?distancias)) do
                (bind ?distanciaJ (nth$ ?j ?distancias))
                (bind ?zonaInteresDistanciaJ (send ?distanciaJ get-respecto_una))
                (if (eq (instance-name ?zonaInteresDistanciaJ) (instance-name ?zonaInteres)) then
                    (bind ?distanciaAZonaInteres ?distanciaJ)
                )
                (bind ?j (+ ?j 1))
            )

            (bind ?nameZI (instance-name ?zonaInteres))
            (bind ?distZI (send ?distanciaAZonaInteres get-tipoDistancia))
            (bind ?distPref (send ?caracteristicaPref get-tipoDistancia))

            (if (eq ?distZI "Lejana") then
                (if (eq ?distPref "Lejana") then
                    (bind ?motiu "Es buscava la Zona de interes " ?nameZI " a distancia Lejana i ho esta")
                    (printout t "Preferencia Complerta: " ?motiu crlf)
                    (bind ?midamRec (+ ?midamRec 1))
                )
                (if (eq ?distPref "Media") then
                    (bind ?motiu "Es buscava la Zona de interes " ?nameZI " a distancia Lejana i esta a distancia Media")
                    (printout t "Preferencia Complerta amb Plus: " ?motiu crlf)
                    (bind ?midamRecPlus (+ ?midamRecPlus 1))
                )
                (if (eq ?distPref "Cerca") then
                    (bind ?motiu "Es buscava la Zona de interes " ?nameZI " a distancia Lejana i esta a distancia Cerca")
                    (printout t "Preferencia Complerta amb Plus: " ?motiu crlf)
                    (bind ?midamRecPlus (+ ?midamRecPlus 1))
                )
            )
            (if (eq ?distZI "Media") then
                (if (eq ?distPref "Lejana") then
                    (bind ?motiu "Es buscava la Zona de interes " ?nameZI " a distancia Media i esta a distancia Lejana")
                    (printout t "Preferencia Debil no Complerta: " ?motiu crlf)
                    (bind ?midamNoRec (+ ?midamNoRec 1))
                )
                (if (eq ?distPref "Media") then
                    (bind ?motiu "Es buscava la Zona de interes " ?nameZI " a distancia Media i ho esta")
                    (printout t "Preferencia Complerta: " ?motiu crlf)
                    (bind ?midamRec (+ ?midamRec 1))
                )
                (if (eq ?distPref "Cerca") then
                    (bind ?motiu "Es buscava la Zona de interes " ?nameZI " a distancia Media i esta a distancia Cerca")
                    (printout t "Preferencia Complerta amb Plus: " ?motiu crlf)
                    (bind ?midamRecPlus (+ ?midamRecPlus 1))
                )
            )
            (if (eq ?distZI "Cerca") then
                (if (eq ?distPref "Lejana") then
                    (bind ?motiu "Es buscava la Zona de interes " ?nameZI " a distancia Cerca i esta a distancia Lejana")
                    (printout t "Preferencia Debil no Complerta: " ?motiu crlf)
                    (bind ?midamNoRec (+ ?midamNoRec 1))
                )
                (if (eq ?distPref "Media") then
                    (bind ?motiu "Es buscava la Zona de interes " ?nameZI " a distancia Cerca i esta a distancia Media")
                    (printout t "Preferencia Debil no Complerta: " ?motiu crlf)
                    (bind ?midamNoRec (+ ?midamNoRec 1))
                )
                (if (eq ?distPref "Cerca") then
                    (bind ?motiu "Es buscava la Zona de interes " ?nameZI " a distancia Cerca i ho esta")
                    (printout t "Preferencia Complerta: " ?motiu crlf)
                    (bind ?midamRec (+ ?midamRec 1))
                )
            )
        )

        (bind ?i (+ ?i 1))
    )

    (if (> ?midamFNoRec 0) then
        (printout t "--> No s'accepta la vivenda perque hi ha mes d'una restriccio forta que no es compleix" crlf)
        else
            (if (> ?midamNoRec 2) then
                (printout t "--> No s'accepta la vivenda perque hi ha mes de dues restriccio debils que no es compleixen" crlf)
        else
            (if (and (= ?midamNoRec 0) (> ?midamRecPlus 0)) then
                (printout t "--> La vivenda es molt recomanable perque es compleixen totes les restriccions fortes i totes les debils" crlf)
            )
            (if (and (= ?midamNoRec 0) (= ?midamRecPlus 0)) then
                (printout t "--> La vivenda es adecuada perque totes les restriccions fortes es compleixen" crlf)
            )
            (if (> ?midamNoRec 0) then
                (printout t "--> La vivenda es parcialment adecuda perque hi ha restriccions debils que no es compleixen" crlf)
            )
        )
    )

    (printout t crlf)

    (modify ?a (completada si))

)
