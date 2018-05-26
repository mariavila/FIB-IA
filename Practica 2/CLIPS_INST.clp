; Sat May 26 19:20:49 CEST 2018
;
;+ (version "3.5")
;+ (build "Build 663")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot MedioDeTransport
		(type SYMBOL)
		(allowed-values Avion Barco Tren Autobus)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot PrecioViaje
		(type FLOAT)
		(range 0.0 1.0E7)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot RazonTransporte
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Ciudad2
		(type INSTANCE)
;+		(allowed-classes Ciudad)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Actividades
		(type INSTANCE)
;+		(allowed-classes Actividad)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot NombreAlojamiento
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot NombreMedio
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot EsEspectaculo
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default FALSE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Ciudad1
		(type INSTANCE)
;+		(allowed-classes Ciudad)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Nombre
;+		(comment "Nombre de la ciudad")
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Europea
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot TransporteLlegada
		(type INSTANCE)
;+		(allowed-classes MedioDeTransporte)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot PuntuacionActividad
		(type INTEGER)
		(default 0)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Alojamientos
		(type INSTANCE)
;+		(allowed-classes Alojamiento)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot TiempoViaje
		(type FLOAT)
		(range 0.0 999999.9)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Origen
		(type INSTANCE)
;+		(allowed-classes Ciudad)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot MedioTransporte
		(type INSTANCE)
;+		(allowed-classes MedioDeTransporte)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Ciudades
		(type INSTANCE)
;+		(allowed-classes Ciudad)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(multislot TransportesDisponibles
		(type INSTANCE)
;+		(allowed-classes MedioDeTransporte)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot RazonActividad
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot KB_156423_Class47
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Tiempo
;+		(comment "Tiempo que se pasa viajando.")
		(type SYMBOL)
		(allowed-values Bajo Medio Alto)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot PrecioActividad
		(type FLOAT)
		(range 0.0 9999.9)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot ParaNinos
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Caro
;+		(comment "Si es caro o no")
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot CiudadItinerario
		(type INSTANCE)
;+		(allowed-classes Ciudad)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot CiudadAlojamiento
		(type INSTANCE)
;+		(allowed-classes Ciudad)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot PuntuacionTransporte
		(type INTEGER)
		(default 0)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot inverse_of_Ciudad2
		(type INSTANCE)
;+		(allowed-classes MapaDeTransportes)
		(create-accessor read-write))
	(multislot ActividadesDisponible
		(type INSTANCE)
;+		(allowed-classes Actividad)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot Precio
;+		(comment "Precio para ir en el medio en euros.")
		(type FLOAT)
		(range 1.0 999999.99)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Ontologia_Class10008
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot CiudadActividad
;+		(comment "Ciudad donde se encuentra el monumento")
		(type INSTANCE)
;+		(allowed-classes Ciudad)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot Ontologia_Class10001
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot CalidadEstrellas
		(type INTEGER)
		(range 1 5)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Ontologia_Class10003
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot RazonCiudad
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Destino
		(type INSTANCE)
;+		(allowed-classes Ciudad)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Calidad
		(type SYMBOL)
		(allowed-values Baja Alta)
		(default Baja)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot PrecioPorNoche
		(type FLOAT)
		(range 1.0 999999.99)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot HabitacionesMasDe3
;+		(comment "Si el alojamiento tiene habitaciones para más de tres personas.")
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default FALSE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Exotica
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default FALSE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot NivelDeRiesgo
;+		(comment "Riesgo de muelte")
		(type INTEGER)
		(range 0 10)
		(default 0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot AlojamientosDisponibles
		(type INSTANCE)
;+		(allowed-classes Alojamiento)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot NombreItinerario
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Para+ninos
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Dias
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot PuntuacionCiudad
		(type INTEGER)
		(default 0)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Nivel
		(type SYMBOL)
		(allowed-values Bajo Alto)
		(default Bajo)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot MonumentosImportantes
		(type INSTANCE)
;+		(allowed-classes Actividad)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot DuracionViaje
;+		(comment "Duración en horas del viaje con el medio.")
		(type FLOAT)
		(range 0.1 999999.99)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot NombreActividad
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot MediosDeTransporte
		(type INSTANCE)
;+		(allowed-classes MedioDeTransporte)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot BanadorRequerido
;+		(comment "Para actividades en piscina, spa,... ;)")
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default FALSE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Banador+Requerido
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default FALSE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot ActividadesPlaneadas
		(type INSTANCE)
;+		(allowed-classes Actividad)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot AlojamientoItinerario
		(type INSTANCE)
;+		(allowed-classes Alojamiento)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Ciudad
	(is-a USER)
	(role concrete)
	(single-slot Nombre
;+		(comment "Nombre de la ciudad")
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot AlojamientosDisponibles
		(type INSTANCE)
;+		(allowed-classes Alojamiento)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot Europea
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot RazonCiudad
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Calidad
		(type SYMBOL)
		(allowed-values Baja Alta)
		(default Baja)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot ActividadesDisponible
		(type INSTANCE)
;+		(allowed-classes Actividad)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot PuntuacionCiudad
		(type INTEGER)
		(default 0)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Exotica
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default FALSE)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Actividad
	(is-a USER)
	(role abstract)
	(single-slot NombreActividad
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot RazonActividad
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot PuntuacionActividad
		(type INTEGER)
		(default 0)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot PrecioActividad
		(type FLOAT)
		(range 0.0 9999.9)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass ActividadAventura
	(is-a Actividad)
	(role concrete)
	(single-slot NivelDeRiesgo
;+		(comment "Riesgo de muelte")
		(type INTEGER)
		(range 0 10)
		(default 0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Banador+Requerido
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default FALSE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot ParaNinos
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass ActividadRelax
	(is-a Actividad)
	(role concrete)
	(single-slot BanadorRequerido
;+		(comment "Para actividades en piscina, spa,... ;)")
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default FALSE)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass ActividadCultural
	(is-a Actividad)
	(role concrete)
	(single-slot EsEspectaculo
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default FALSE)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass ActividadOcio
	(is-a Actividad)
	(role concrete)
	(single-slot Para+ninos
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Alojamiento
	(is-a USER)
	(role concrete)
	(single-slot CalidadEstrellas
		(type INTEGER)
		(range 1 5)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot NombreAlojamiento
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot PrecioPorNoche
		(type FLOAT)
		(range 1.0 999999.99)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot HabitacionesMasDe3
;+		(comment "Si el alojamiento tiene habitaciones para más de tres personas.")
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default FALSE)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass MedioDeTransporte
	(is-a USER)
	(role concrete)
	(single-slot NombreMedio
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Itinerario
	(is-a USER)
	(role concrete)
	(single-slot Dias
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot TransporteLlegada
		(type INSTANCE)
;+		(allowed-classes MedioDeTransporte)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot ActividadesPlaneadas
		(type INSTANCE)
;+		(allowed-classes Actividad)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot AlojamientoItinerario
		(type INSTANCE)
;+		(allowed-classes Alojamiento)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot CiudadItinerario
		(type INSTANCE)
;+		(allowed-classes Ciudad)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass MapaDeTransportes
	(is-a USER)
	(role concrete)
	(single-slot MedioTransporte
		(type INSTANCE)
;+		(allowed-classes MedioDeTransporte)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot PrecioViaje
		(type FLOAT)
		(range 0.0 1.0E7)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot RazonTransporte
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Ciudad2
		(type INSTANCE)
;+		(allowed-classes Ciudad)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot PuntuacionTransporte
		(type INTEGER)
		(default 0)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot TiempoViaje
		(type FLOAT)
		(range 0.0 999999.9)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Ciudad1
		(type INSTANCE)
;+		(allowed-classes Ciudad)
;+		(cardinality 1 1)
		(create-accessor read-write)))


;; --------------------------------------------------------------------------------------------------------------------
;; -----------------------------------------------  INSTANCIAS  -------------------------------------------------------
;; --------------------------------------------------------------------------------------------------------------------

(definstances Instancias
	; Sat May 26 19:20:49 CEST 2018
;
;+ (version "3.5")
;+ (build "Build 663")

([KB_156423_Class25] of  Ciudad

	(ActividadesDisponible
		[Ontologia_Class20020]
		[KB_156423_Class50]
		[Ontologia_Class20018]
		[KB_156423_Class72]
		[Ontologia_Class20016]
		[KB_156423_Class70]
		[Ontologia_Class20011]
		[Ontologia_Class1]
		[Ontologia_Class20009]
		[Ontologia_Class20012]
		[Ontologia_Class20021]
		[Ontologia_Class3]
		[Ontologia_Class2]
		[Ontologia_Class20015]
		[Ontologia_Class20017]
		[Ontologia_Class30045]
		[Ontologia_Class30046]
		[Ontologia_Class30054]
		[Ontologia_Class30049])
	(AlojamientosDisponibles
		[Ontologia_Class10014]
		[KB_156423_Class64]
		[Ontologia_Class30093])
	(Calidad Alta)
	(Europea TRUE)
	(Exotica FALSE)
	(Nombre "Barcelona"))

([KB_156423_Class30] of  Ciudad

	(ActividadesDisponible
		[KB_156423_Class70]
		[Ontologia_Class20011]
		[Ontologia_Class20012]
		[KB_156423_Class50]
		[Ontologia_Class20018]
		[Ontologia_Class20020]
		[Ontologia_Class20016]
		[Ontologia_Class20009]
		[Ontologia_Class20021]
		[Ontologia_Class20015]
		[Ontologia_Class20017]
		[Ontologia_Class30045]
		[Ontologia_Class30046]
		[Ontologia_Class30054]
		[Ontologia_Class30049])
	(AlojamientosDisponibles
		[Ontologia_Class10034]
		[Ontologia_Class10032]
		[Ontologia_Class10033])
	(Calidad Alta)
	(Europea TRUE)
	(Exotica FALSE)
	(Nombre "Madrid"))

([KB_156423_Class32] of  Ciudad

	(ActividadesDisponible
		[KB_156423_Class72]
		[KB_156423_Class71]
		[Ontologia_Class3]
		[Ontologia_Class2]
		[KB_156423_Class70]
		[Ontologia_Class20011]
		[Ontologia_Class20012]
		[Ontologia_Class20018]
		[Ontologia_Class20016]
		[Ontologia_Class20009]
		[Ontologia_Class20015]
		[Ontologia_Class30045]
		[Ontologia_Class30046]
		[Ontologia_Class30049])
	(AlojamientosDisponibles
		[KB_156423_Class69]
		[Ontologia_Class10044]
		[Ontologia_Class10043])
	(Calidad Baja)
	(Europea FALSE)
	(Exotica TRUE)
	(Nombre "Rio de Janeiro"))

([KB_156423_Class50] of  ActividadCultural

	(EsEspectaculo TRUE)
	(NombreActividad "Circo")
	(PrecioActividad 50.0))

([KB_156423_Class51] of  Ciudad

	(ActividadesDisponible
		[KB_156423_Class71]
		[KB_156423_Class70]
		[Ontologia_Class20011]
		[Ontologia_Class20012]
		[KB_156423_Class50]
		[Ontologia_Class20018]
		[Ontologia_Class20020]
		[Ontologia_Class20016]
		[Ontologia_Class20009]
		[Ontologia_Class20021]
		[Ontologia_Class20015]
		[Ontologia_Class20017]
		[Ontologia_Class30045]
		[Ontologia_Class30046]
		[Ontologia_Class30054]
		[Ontologia_Class30049])
	(AlojamientosDisponibles
		[KB_156423_Class67]
		[Ontologia_Class30096]
		[Ontologia_Class30097])
	(Calidad Alta)
	(Europea TRUE)
	(Exotica FALSE)
	(Nombre "Paris"))

([KB_156423_Class57] of  MedioDeTransporte

	(NombreMedio "Barco"))

([KB_156423_Class59] of  MedioDeTransporte

	(NombreMedio "Avion"))

([KB_156423_Class60] of  MedioDeTransporte

	(NombreMedio "Autobus"))

([KB_156423_Class61] of  MedioDeTransporte

	(NombreMedio "Tren"))

([KB_156423_Class64] of  Alojamiento

	(CalidadEstrellas 5)
	(HabitacionesMasDe3 TRUE)
	(NombreAlojamiento "Hotel Catalunya")
	(PrecioPorNoche 300.0))

([KB_156423_Class66] of  Alojamiento

	(CalidadEstrellas 1)
	(HabitacionesMasDe3 FALSE)
	(NombreAlojamiento "Motel Mi Hamor")
	(PrecioPorNoche 5.0))

([KB_156423_Class67] of  Alojamiento

	(CalidadEstrellas 3)
	(HabitacionesMasDe3 TRUE)
	(NombreAlojamiento "Hotel Oh la la mon amour")
	(PrecioPorNoche 120.0))

([KB_156423_Class69] of  Alojamiento

	(CalidadEstrellas 2)
	(HabitacionesMasDe3 TRUE)
	(NombreAlojamiento "Hoteirao Buona Noite")
	(PrecioPorNoche 20.0))

([KB_156423_Class70] of  ActividadRelax

	(BanadorRequerido TRUE)
	(NombreActividad "Jacuzzi")
	(PrecioActividad 40.0))

([KB_156423_Class71] of  ActividadAventura

	(Banador+Requerido FALSE)
	(NivelDeRiesgo 9)
	(NombreActividad "Paracaidismo")
	(ParaNinos FALSE)
	(PrecioActividad 90.0))

([KB_156423_Class72] of  ActividadAventura

	(Banador+Requerido FALSE)
	(NivelDeRiesgo 7)
	(NombreActividad "Escalada")
	(ParaNinos FALSE)
	(PrecioActividad 35.0))

([Ontologia_Class0] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class13])
	(Ciudad2 [Ontologia_Class18])
	(MedioTransporte [KB_156423_Class57])
	(PrecioViaje 60.0)
	(TiempoViaje 10.0))

([Ontologia_Class1] of  ActividadAventura

	(Banador+Requerido FALSE)
	(NivelDeRiesgo 3)
	(NombreActividad "Montanismo")
	(ParaNinos TRUE)
	(PrecioActividad 0.0))

([Ontologia_Class10] of  Ciudad

	(ActividadesDisponible
		[KB_156423_Class72]
		[Ontologia_Class1]
		[KB_156423_Class71]
		[Ontologia_Class3]
		[Ontologia_Class2]
		[KB_156423_Class70]
		[Ontologia_Class20011]
		[Ontologia_Class20012]
		[KB_156423_Class50]
		[Ontologia_Class20018]
		[Ontologia_Class20016]
		[Ontologia_Class20009]
		[Ontologia_Class20021]
		[Ontologia_Class20015]
		[Ontologia_Class20017]
		[Ontologia_Class30045]
		[Ontologia_Class30054]
		[Ontologia_Class30046]
		[Ontologia_Class30049])
	(AlojamientosDisponibles
		[Ontologia_Class10046]
		[Ontologia_Class10045]
		[Ontologia_Class10047])
	(Calidad Alta)
	(Europea TRUE)
	(Exotica FALSE)
	(Nombre "Roma"))

([Ontologia_Class10000] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class13])
	(Ciudad2 [KB_156423_Class25])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 750.0)
	(PuntuacionTransporte 0)
	(TiempoViaje 13.0))

([Ontologia_Class10010] of  Alojamiento

	(CalidadEstrellas 5)
	(HabitacionesMasDe3 TRUE)
	(NombreAlojamiento "Resort Hilton")
	(PrecioPorNoche 400.0))

([Ontologia_Class10011] of  Alojamiento

	(CalidadEstrellas 3)
	(HabitacionesMasDe3 TRUE)
	(NombreAlojamiento "Hotel Augusta")
	(PrecioPorNoche 250.0))

([Ontologia_Class10012] of  Alojamiento

	(CalidadEstrellas 2)
	(HabitacionesMasDe3 FALSE)
	(NombreAlojamiento "Hostel Williams and Co")
	(PrecioPorNoche 80.0))

([Ontologia_Class10014] of  Alojamiento

	(CalidadEstrellas 2)
	(HabitacionesMasDe3 TRUE)
	(NombreAlojamiento "Hostal Casa Batllo")
	(PrecioPorNoche 30.0))

([Ontologia_Class10015] of  Alojamiento

	(CalidadEstrellas 5)
	(HabitacionesMasDe3 TRUE)
	(NombreAlojamiento "Hotel Schawzerg")
	(PrecioPorNoche 350.0))

([Ontologia_Class10016] of  Alojamiento

	(CalidadEstrellas 3)
	(HabitacionesMasDe3 FALSE)
	(NombreAlojamiento "Hotel Auchgang")
	(PrecioPorNoche 150.0))

([Ontologia_Class10017] of  Alojamiento

	(CalidadEstrellas 1)
	(HabitacionesMasDe3 TRUE)
	(NombreAlojamiento "Hostel Gute Nacht")
	(PrecioPorNoche 15.0))

([Ontologia_Class10018] of  Alojamiento

	(CalidadEstrellas 5)
	(HabitacionesMasDe3 TRUE)
	(NombreAlojamiento "Resort HRC")
	(PrecioPorNoche 350.0))

([Ontologia_Class10019] of  Alojamiento

	(CalidadEstrellas 3)
	(HabitacionesMasDe3 FALSE)
	(NombreAlojamiento "Hotel Trinidad")
	(PrecioPorNoche 50.0))

([Ontologia_Class10020] of  Alojamiento

	(CalidadEstrellas 5)
	(HabitacionesMasDe3 TRUE)
	(NombreAlojamiento "Melia Hotel")
	(PrecioPorNoche 200.0))

([Ontologia_Class10021] of  Alojamiento

	(CalidadEstrellas 3)
	(HabitacionesMasDe3 FALSE)
	(NombreAlojamiento "Hotel Emarald")
	(PrecioPorNoche 30.0))

([Ontologia_Class10022] of  Alojamiento

	(CalidadEstrellas 2)
	(HabitacionesMasDe3 TRUE)
	(NombreAlojamiento "Hotel The Gandhi")
	(PrecioPorNoche 5.0))

([Ontologia_Class10023] of  Alojamiento

	(CalidadEstrellas 5)
	(HabitacionesMasDe3 TRUE)
	(NombreAlojamiento "Resort Luxor")
	(PrecioPorNoche 250.0))

([Ontologia_Class10024] of  Alojamiento

	(CalidadEstrellas 3)
	(HabitacionesMasDe3 TRUE)
	(NombreAlojamiento "Hotel Safir Cairo")
	(PrecioPorNoche 60.0))

([Ontologia_Class10025] of  Alojamiento

	(CalidadEstrellas 2)
	(HabitacionesMasDe3 TRUE)
	(NombreAlojamiento "Hostel Nefertiti")
	(PrecioPorNoche 15.0))

([Ontologia_Class10026] of  Alojamiento

	(CalidadEstrellas 5)
	(HabitacionesMasDe3 TRUE)
	(NombreAlojamiento "Hotel Hilton Tokyo")
	(PrecioPorNoche 450.0))

([Ontologia_Class10027] of  Alojamiento

	(CalidadEstrellas 3)
	(HabitacionesMasDe3 FALSE)
	(NombreAlojamiento "Hotel Yamato Kenshi")
	(PrecioPorNoche 150.0))

([Ontologia_Class10028] of  Alojamiento

	(CalidadEstrellas 2)
	(HabitacionesMasDe3 TRUE)
	(NombreAlojamiento "Hotel Yatekomo")
	(PrecioPorNoche 50.0))

([Ontologia_Class10029] of  Alojamiento

	(CalidadEstrellas 5)
	(HabitacionesMasDe3 FALSE)
	(NombreAlojamiento "Hotel British Melia")
	(PrecioPorNoche 500.0))

([Ontologia_Class10030] of  Alojamiento

	(CalidadEstrellas 1)
	(HabitacionesMasDe3 TRUE)
	(NombreAlojamiento "Premier Inn Covent Garden")
	(PrecioPorNoche 30.0))

([Ontologia_Class10031] of  Alojamiento

	(CalidadEstrellas 3)
	(HabitacionesMasDe3 TRUE)
	(NombreAlojamiento "Hotel Victoria")
	(PrecioPorNoche 150.0))

([Ontologia_Class10032] of  Alojamiento

	(CalidadEstrellas 4)
	(HabitacionesMasDe3 TRUE)
	(NombreAlojamiento "Hotel Espana")
	(PrecioPorNoche 300.0))

([Ontologia_Class10033] of  Alojamiento

	(CalidadEstrellas 3)
	(HabitacionesMasDe3 TRUE)
	(NombreAlojamiento "Hotel TC")
	(PrecioPorNoche 100.0))

([Ontologia_Class10034] of  Alojamiento

	(CalidadEstrellas 1)
	(HabitacionesMasDe3 TRUE)
	(NombreAlojamiento "Hostal Cafe Plaza Mayor")
	(PrecioPorNoche 20.0))

([Ontologia_Class10035] of  Alojamiento

	(CalidadEstrellas 5)
	(HabitacionesMasDe3 FALSE)
	(NombreAlojamiento "Hotel Izmalovo")
	(PrecioPorNoche 400.0))

([Ontologia_Class10036] of  Alojamiento

	(CalidadEstrellas 3)
	(HabitacionesMasDe3 TRUE)
	(NombreAlojamiento "Hotel Matreshka")
	(PrecioPorNoche 150.0))

([Ontologia_Class10037] of  Alojamiento

	(CalidadEstrellas 2)
	(HabitacionesMasDe3 FALSE)
	(NombreAlojamiento "Hostal Vodka")
	(PrecioPorNoche 40.0))

([Ontologia_Class10038] of  Alojamiento

	(CalidadEstrellas 5)
	(HabitacionesMasDe3 FALSE)
	(NombreAlojamiento "Hotel Liberty City")
	(PrecioPorNoche 600.0))

([Ontologia_Class10039] of  Alojamiento

	(CalidadEstrellas 3)
	(HabitacionesMasDe3 TRUE)
	(NombreAlojamiento "Hotel Metropolitan")
	(PrecioPorNoche 200.0))

([Ontologia_Class10040] of  Alojamiento

	(CalidadEstrellas 1)
	(HabitacionesMasDe3 TRUE)
	(NombreAlojamiento "Sleep Inn")
	(PrecioPorNoche 50.0))

([Ontologia_Class10043] of  Alojamiento

	(CalidadEstrellas 5)
	(HabitacionesMasDe3 FALSE)
	(NombreAlojamiento "Resort Brasilia")
	(PrecioPorNoche 300.0))

([Ontologia_Class10044] of  Alojamiento

	(CalidadEstrellas 3)
	(HabitacionesMasDe3 FALSE)
	(NombreAlojamiento "Hotel Novo Mundo")
	(PrecioPorNoche 50.0))

([Ontologia_Class10045] of  Alojamiento

	(CalidadEstrellas 3)
	(HabitacionesMasDe3 TRUE)
	(NombreAlojamiento "Hotel Coliseo")
	(PrecioPorNoche 70.0))

([Ontologia_Class10046] of  Alojamiento

	(CalidadEstrellas 1)
	(HabitacionesMasDe3 TRUE)
	(NombreAlojamiento "Hostal Fontana di Trevi")
	(PrecioPorNoche 18.0))

([Ontologia_Class10047] of  Alojamiento

	(CalidadEstrellas 5)
	(HabitacionesMasDe3 TRUE)
	(NombreAlojamiento "Hotel H10 Roma Citta")
	(PrecioPorNoche 350.0))

([Ontologia_Class10049] of  Alojamiento

	(CalidadEstrellas 5)
	(HabitacionesMasDe3 TRUE)
	(NombreAlojamiento "Resort Opera")
	(PrecioPorNoche 430.0))

([Ontologia_Class10050] of  Alojamiento

	(CalidadEstrellas 2)
	(HabitacionesMasDe3 FALSE)
	(NombreAlojamiento "Hostel Lord Koala")
	(PrecioPorNoche 50.0))

([Ontologia_Class10051] of  Alojamiento

	(CalidadEstrellas 3)
	(HabitacionesMasDe3 TRUE)
	(NombreAlojamiento "Hotel Weasley")
	(PrecioPorNoche 120.0))

([Ontologia_Class11] of  Ciudad

	(ActividadesDisponible
		[KB_156423_Class72]
		[KB_156423_Class71]
		[KB_156423_Class70]
		[Ontologia_Class20011]
		[Ontologia_Class20012]
		[KB_156423_Class50]
		[Ontologia_Class20018]
		[Ontologia_Class20020]
		[Ontologia_Class20016]
		[Ontologia_Class20009]
		[Ontologia_Class20021]
		[Ontologia_Class20015]
		[Ontologia_Class20017]
		[Ontologia_Class30045]
		[Ontologia_Class30046]
		[Ontologia_Class30054]
		[Ontologia_Class30049])
	(AlojamientosDisponibles
		[Ontologia_Class10017]
		[Ontologia_Class10016]
		[Ontologia_Class10015])
	(Calidad Alta)
	(Europea TRUE)
	(Exotica FALSE)
	(Nombre "Berlin"))

([Ontologia_Class12] of  Ciudad

	(ActividadesDisponible
		[Ontologia_Class3]
		[Ontologia_Class2]
		[KB_156423_Class70]
		[Ontologia_Class20011]
		[Ontologia_Class20012]
		[KB_156423_Class50]
		[Ontologia_Class20018]
		[Ontologia_Class20020]
		[Ontologia_Class20016]
		[Ontologia_Class20009]
		[Ontologia_Class20021]
		[Ontologia_Class20015]
		[Ontologia_Class20017]
		[Ontologia_Class30045]
		[Ontologia_Class30046]
		[Ontologia_Class30054]
		[Ontologia_Class30049])
	(AlojamientosDisponibles
		[Ontologia_Class10038]
		[Ontologia_Class10039]
		[Ontologia_Class10040])
	(Calidad Alta)
	(Europea FALSE)
	(Exotica FALSE)
	(Nombre "Nueva York"))

([Ontologia_Class13] of  Ciudad

	(ActividadesDisponible
		[Ontologia_Class3]
		[Ontologia_Class2]
		[Ontologia_Class20018]
		[Ontologia_Class20020]
		[Ontologia_Class20016]
		[Ontologia_Class20015]
		[Ontologia_Class20013]
		[KB_156423_Class70]
		[Ontologia_Class20011]
		[Ontologia_Class20012]
		[Ontologia_Class30045]
		[Ontologia_Class30049])
	(AlojamientosDisponibles
		[Ontologia_Class10012]
		[Ontologia_Class10011]
		[Ontologia_Class10010])
	(Calidad Alta)
	(Europea FALSE)
	(Exotica TRUE)
	(Nombre "Bahamas"))

([Ontologia_Class14] of  Ciudad

	(ActividadesDisponible
		[Ontologia_Class1]
		[KB_156423_Class70]
		[Ontologia_Class20011]
		[Ontologia_Class20012]
		[KB_156423_Class50]
		[Ontologia_Class20018]
		[Ontologia_Class20020]
		[Ontologia_Class20016]
		[Ontologia_Class20009]
		[Ontologia_Class20015]
		[Ontologia_Class20017]
		[Ontologia_Class30045]
		[Ontologia_Class30046]
		[Ontologia_Class30054]
		[Ontologia_Class30049])
	(AlojamientosDisponibles
		[Ontologia_Class10037]
		[Ontologia_Class10035]
		[Ontologia_Class10036])
	(Calidad Baja)
	(Europea TRUE)
	(Exotica FALSE)
	(Nombre "Moscu"))

([Ontologia_Class15] of  Ciudad

	(ActividadesDisponible
		[Ontologia_Class1]
		[Ontologia_Class3]
		[Ontologia_Class2]
		[Ontologia_Class20013]
		[KB_156423_Class70]
		[Ontologia_Class20011]
		[Ontologia_Class20012]
		[KB_156423_Class50]
		[Ontologia_Class20018]
		[Ontologia_Class20016]
		[Ontologia_Class20009]
		[Ontologia_Class20015]
		[Ontologia_Class30045]
		[Ontologia_Class30046]
		[Ontologia_Class30054]
		[Ontologia_Class30049])
	(AlojamientosDisponibles
		[Ontologia_Class10026]
		[Ontologia_Class10027]
		[Ontologia_Class10028])
	(Calidad Alta)
	(Europea FALSE)
	(Exotica TRUE)
	(Nombre "Japon"))

([Ontologia_Class16] of  Ciudad

	(ActividadesDisponible
		[KB_156423_Class72]
		[Ontologia_Class1]
		[Ontologia_Class3]
		[Ontologia_Class2]
		[KB_156423_Class70]
		[Ontologia_Class20011]
		[Ontologia_Class20012]
		[KB_156423_Class50]
		[Ontologia_Class20018]
		[Ontologia_Class20020]
		[Ontologia_Class20016]
		[Ontologia_Class20009]
		[Ontologia_Class20021]
		[Ontologia_Class20015]
		[Ontologia_Class20017]
		[Ontologia_Class30045]
		[Ontologia_Class30046]
		[Ontologia_Class30054]
		[Ontologia_Class30049])
	(AlojamientosDisponibles
		[Ontologia_Class10050]
		[Ontologia_Class10051]
		[Ontologia_Class10049])
	(Calidad Alta)
	(Europea FALSE)
	(Exotica FALSE)
	(Nombre "Sidney"))

([Ontologia_Class17] of  Ciudad

	(ActividadesDisponible
		[Ontologia_Class1]
		[KB_156423_Class70]
		[Ontologia_Class20011]
		[Ontologia_Class20012]
		[Ontologia_Class20016]
		[Ontologia_Class20015]
		[Ontologia_Class30045]
		[Ontologia_Class30046])
	(AlojamientosDisponibles
		[Ontologia_Class10025]
		[Ontologia_Class10024]
		[Ontologia_Class10023])
	(Calidad Baja)
	(Europea FALSE)
	(Exotica FALSE)
	(Nombre "Egipto"))

([Ontologia_Class18] of  Ciudad

	(ActividadesDisponible
		[KB_156423_Class72]
		[KB_156423_Class71]
		[Ontologia_Class3]
		[Ontologia_Class2]
		[Ontologia_Class20013]
		[KB_156423_Class70]
		[Ontologia_Class20011]
		[Ontologia_Class20012]
		[Ontologia_Class20018]
		[Ontologia_Class20020]
		[Ontologia_Class20016]
		[Ontologia_Class20015]
		[Ontologia_Class20017]
		[Ontologia_Class30049]
		[Ontologia_Class30045]
		[Ontologia_Class30046])
	(AlojamientosDisponibles
		[Ontologia_Class10019]
		[KB_156423_Class66]
		[Ontologia_Class10018])
	(Calidad Baja)
	(Europea FALSE)
	(Exotica TRUE)
	(Nombre "Cuba"))

([Ontologia_Class19] of  Ciudad

	(ActividadesDisponible
		[Ontologia_Class1]
		[Ontologia_Class20013]
		[KB_156423_Class70]
		[Ontologia_Class20011]
		[Ontologia_Class20012]
		[Ontologia_Class20016]
		[Ontologia_Class20015]
		[Ontologia_Class30045]
		[Ontologia_Class30046]
		[Ontologia_Class30054]
		[Ontologia_Class30049])
	(AlojamientosDisponibles
		[Ontologia_Class10021]
		[Ontologia_Class10022]
		[Ontologia_Class10020])
	(Calidad Baja)
	(Europea FALSE)
	(Exotica TRUE)
	(Nombre "Delhi"))

([Ontologia_Class2] of  ActividadAventura

	(Banador+Requerido TRUE)
	(NivelDeRiesgo 8)
	(NombreActividad "Submarinismo")
	(ParaNinos FALSE)
	(PrecioActividad 75.5))

([Ontologia_Class20001] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class13])
	(Ciudad2 [Ontologia_Class11])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 850.0)
	(PuntuacionTransporte 0)
	(TiempoViaje 16.0))

([Ontologia_Class20002] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class13])
	(Ciudad2 [Ontologia_Class18])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 100.0)
	(TiempoViaje 1.5))

([Ontologia_Class20003] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class13])
	(Ciudad2 [Ontologia_Class12])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 200.0)
	(TiempoViaje 5.0))

([Ontologia_Class20004] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class13])
	(Ciudad2 [KB_156423_Class32])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 350.0)
	(TiempoViaje 8.0))

([Ontologia_Class20005] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class13])
	(Ciudad2 [KB_156423_Class30])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 600.0)
	(TiempoViaje 11.0))

([Ontologia_Class20006] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class11])
	(Ciudad2 [Ontologia_Class19])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 650.0)
	(TiempoViaje 12.0))

([Ontologia_Class20007] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class11])
	(Ciudad2 [Ontologia_Class17])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 210.0)
	(TiempoViaje 4.0))

([Ontologia_Class20008] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class11])
	(Ciudad2 [Ontologia_Class15])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 700.0)
	(TiempoViaje 16.0))

([Ontologia_Class20009] of  ActividadOcio

	(NombreActividad "Parque de atracciones")
	(Para+ninos TRUE)
	(PrecioActividad 50.0))

([Ontologia_Class20011] of  ActividadRelax

	(BanadorRequerido FALSE)
	(NombreActividad "Masaje")
	(PrecioActividad 60.0))

([Ontologia_Class20012] of  ActividadRelax

	(BanadorRequerido FALSE)
	(NombreActividad "Sauna")
	(PrecioActividad 15.0))

([Ontologia_Class20013] of  ActividadRelax

	(BanadorRequerido TRUE)
	(NombreActividad "Aguas termales")
	(PrecioActividad 25.0))

([Ontologia_Class20015] of  ActividadOcio

	(NombreActividad "Tour gastronomico")
	(Para+ninos FALSE)
	(PrecioActividad 110.0))

([Ontologia_Class20016] of  ActividadOcio

	(NombreActividad "Fiesta nocturna")
	(Para+ninos FALSE)
	(PrecioActividad 30.0))

([Ontologia_Class20017] of  ActividadOcio

	(NombreActividad "Zoologico")
	(Para+ninos TRUE)
	(PrecioActividad 20.0))

([Ontologia_Class20018] of  ActividadCultural

	(EsEspectaculo TRUE)
	(NombreActividad "Concierto")
	(PrecioActividad 70.0))

([Ontologia_Class20020] of  ActividadOcio

	(NombreActividad "Acuario")
	(Para+ninos TRUE)
	(PrecioActividad 25.0))

([Ontologia_Class20021] of  ActividadOcio

	(NombreActividad "Scape Room")
	(Para+ninos FALSE)
	(PrecioActividad 15.0))

([Ontologia_Class3] of  ActividadAventura

	(Banador+Requerido TRUE)
	(NivelDeRiesgo 3)
	(NombreActividad "Snorkel")
	(ParaNinos TRUE)
	(PrecioActividad 7.5))

([Ontologia_Class30002] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class13])
	(Ciudad2 [Ontologia_Class19])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 1200.0)
	(PuntuacionTransporte 0)
	(TiempoViaje 24.0))

([Ontologia_Class30003] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class13])
	(Ciudad2 [Ontologia_Class17])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 900.0)
	(PuntuacionTransporte 0)
	(TiempoViaje 20.0))

([Ontologia_Class30004] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class13])
	(Ciudad2 [Ontologia_Class15])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 850.0)
	(PuntuacionTransporte 0)
	(TiempoViaje 20.0))

([Ontologia_Class30005] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class13])
	(Ciudad2 [Ontologia_Class9])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 820.0)
	(PuntuacionTransporte 0)
	(TiempoViaje 13.0))

([Ontologia_Class30006] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class13])
	(Ciudad2 [Ontologia_Class14])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 880.0)
	(PuntuacionTransporte 0)
	(TiempoViaje 22.0))

([Ontologia_Class30007] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class13])
	(Ciudad2 [KB_156423_Class51])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 800.0)
	(PuntuacionTransporte 0)
	(TiempoViaje 13.0))

([Ontologia_Class30008] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class13])
	(Ciudad2 [Ontologia_Class10])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 960.0)
	(PuntuacionTransporte 0)
	(TiempoViaje 15.0))

([Ontologia_Class30009] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class11])
	(Ciudad2 [Ontologia_Class9])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 200.0)
	(TiempoViaje 2.0))

([Ontologia_Class30010] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class25])
	(Ciudad2 [Ontologia_Class11])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 150.0)
	(TiempoViaje 3.0))

([Ontologia_Class30011] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class25])
	(Ciudad2 [Ontologia_Class11])
	(MedioTransporte [KB_156423_Class61])
	(PrecioViaje 100.0)
	(TiempoViaje 10.0))

([Ontologia_Class30012] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class25])
	(Ciudad2 [Ontologia_Class11])
	(MedioTransporte [KB_156423_Class60])
	(PrecioViaje 50.0)
	(TiempoViaje 20.0))

([Ontologia_Class30015] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class25])
	(Ciudad2 [Ontologia_Class18])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 900.0)
	(TiempoViaje 13.0))

([Ontologia_Class30018] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class25])
	(Ciudad2 [Ontologia_Class17])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 200.0)
	(TiempoViaje 3.5))

([Ontologia_Class30019] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class25])
	(Ciudad2 [Ontologia_Class17])
	(MedioTransporte [KB_156423_Class57])
	(PrecioViaje 100.0)
	(TiempoViaje 30.0))

([Ontologia_Class30020] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class25])
	(Ciudad2 [Ontologia_Class9])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 100.0)
	(TiempoViaje 2.3))

([Ontologia_Class30021] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class25])
	(Ciudad2 [KB_156423_Class30])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 70.0)
	(TiempoViaje 1.0))

([Ontologia_Class30022] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class25])
	(Ciudad2 [KB_156423_Class30])
	(MedioTransporte [KB_156423_Class61])
	(PrecioViaje 40.0)
	(TiempoViaje 5.0))

([Ontologia_Class30023] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class25])
	(Ciudad2 [KB_156423_Class30])
	(MedioTransporte [KB_156423_Class60])
	(PrecioViaje 20.0)
	(TiempoViaje 7.0))

([Ontologia_Class30024] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class25])
	(Ciudad2 [Ontologia_Class14])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 350.0)
	(TiempoViaje 7.0))

([Ontologia_Class30025] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class25])
	(Ciudad2 [Ontologia_Class14])
	(MedioTransporte [KB_156423_Class60])
	(PrecioViaje 80.0)
	(TiempoViaje 50.0))

([Ontologia_Class30026] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class25])
	(Ciudad2 [Ontologia_Class14])
	(MedioTransporte [KB_156423_Class61])
	(PrecioViaje 130.0)
	(TiempoViaje 24.0))

([Ontologia_Class30027] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class25])
	(Ciudad2 [Ontologia_Class12])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 650.0)
	(TiempoViaje 11.0))

([Ontologia_Class30028] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class25])
	(Ciudad2 [KB_156423_Class51])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 200.0)
	(TiempoViaje 2.0))

([Ontologia_Class30031] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class25])
	(Ciudad2 [KB_156423_Class51])
	(MedioTransporte [KB_156423_Class60])
	(PrecioViaje 80.0)
	(TiempoViaje 12.0))

([Ontologia_Class30045] of  ActividadCultural

	(EsEspectaculo FALSE)
	(NombreActividad "Monumento Historico")
	(PrecioActividad 10.0))

([Ontologia_Class30046] of  ActividadCultural

	(EsEspectaculo FALSE)
	(NombreActividad "Museo")
	(PrecioActividad 15.0))

([Ontologia_Class30048] of  ActividadRelax

	(BanadorRequerido TRUE)
	(NombreActividad "Paseo en barco")
	(PrecioActividad 60.0))

([Ontologia_Class30049] of  ActividadAventura

	(Banador+Requerido FALSE)
	(NivelDeRiesgo 1)
	(NombreActividad "Paseo en bicicleta")
	(ParaNinos TRUE)
	(PrecioActividad 12.0))

([Ontologia_Class30054] of  ActividadCultural

	(EsEspectaculo TRUE)
	(NombreActividad "Teatro")
	(PrecioActividad 35.0))

([Ontologia_Class30065] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class25])
	(Ciudad2 [KB_156423_Class51])
	(MedioTransporte [KB_156423_Class61])
	(PrecioViaje 140.0)
	(TiempoViaje 5.0))

([Ontologia_Class30093] of  Alojamiento

	(CalidadEstrellas 4)
	(HabitacionesMasDe3 TRUE)
	(NombreAlojamiento "Hotel Gaudi")
	(PrecioPorNoche 150.0))

([Ontologia_Class30096] of  Alojamiento

	(CalidadEstrellas 2)
	(HabitacionesMasDe3 TRUE)
	(NombreAlojamiento "Hotel Gare de lEst")
	(PrecioPorNoche 60.0))

([Ontologia_Class30097] of  Alojamiento

	(CalidadEstrellas 5)
	(HabitacionesMasDe3 TRUE)
	(NombreAlojamiento "Hotel Louvre")
	(PrecioPorNoche 380.0))

([Ontologia_Class30101] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class25])
	(Ciudad2 [Ontologia_Class10])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 90.0)
	(TiempoViaje 2.0))

([Ontologia_Class30102] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class25])
	(Ciudad2 [Ontologia_Class10])
	(MedioTransporte [KB_156423_Class61])
	(PrecioViaje 75.0)
	(TiempoViaje 10.0))

([Ontologia_Class30103] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class25])
	(Ciudad2 [Ontologia_Class10])
	(MedioTransporte [KB_156423_Class60])
	(PrecioViaje 50.0)
	(TiempoViaje 16.0))

([Ontologia_Class30104] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class25])
	(Ciudad2 [Ontologia_Class10])
	(MedioTransporte [KB_156423_Class57])
	(PrecioViaje 60.0)
	(TiempoViaje 24.0))

([Ontologia_Class40009] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class13])
	(Ciudad2 [Ontologia_Class16])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 950.0)
	(PuntuacionTransporte 0)
	(TiempoViaje 20.0))

([Ontologia_Class40010] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class11])
	(Ciudad2 [Ontologia_Class9])
	(MedioTransporte [KB_156423_Class60])
	(PrecioViaje 80.0)
	(TiempoViaje 15.0))

([Ontologia_Class40011] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class11])
	(Ciudad2 [KB_156423_Class30])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 180.0)
	(TiempoViaje 3.0))

([Ontologia_Class40012] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class11])
	(Ciudad2 [KB_156423_Class30])
	(MedioTransporte [KB_156423_Class60])
	(PrecioViaje 70.0)
	(TiempoViaje 24.0))

([Ontologia_Class40013] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class11])
	(Ciudad2 [Ontologia_Class14])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 160.0)
	(TiempoViaje 2.0))

([Ontologia_Class40014] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class11])
	(Ciudad2 [Ontologia_Class14])
	(MedioTransporte [KB_156423_Class60])
	(PrecioViaje 60.0)
	(TiempoViaje 10.0))

([Ontologia_Class40015] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class11])
	(Ciudad2 [Ontologia_Class14])
	(MedioTransporte [KB_156423_Class61])
	(PrecioViaje 110.0)
	(TiempoViaje 5.0))

([Ontologia_Class40016] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class11])
	(Ciudad2 [KB_156423_Class30])
	(MedioTransporte [KB_156423_Class61])
	(PrecioViaje 120.0)
	(TiempoViaje 11.0))

([Ontologia_Class40017] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class11])
	(Ciudad2 [Ontologia_Class12])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 550.0)
	(TiempoViaje 12.0))

([Ontologia_Class40018] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class11])
	(Ciudad2 [KB_156423_Class51])
	(MedioTransporte [KB_156423_Class60])
	(PrecioViaje 45.0)
	(TiempoViaje 10.0))

([Ontologia_Class40019] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class11])
	(Ciudad2 [KB_156423_Class51])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 150.0)
	(TiempoViaje 2.0))

([Ontologia_Class40020] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class11])
	(Ciudad2 [KB_156423_Class51])
	(MedioTransporte [KB_156423_Class61])
	(PrecioViaje 130.0)
	(TiempoViaje 5.0))

([Ontologia_Class40021] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class11])
	(Ciudad2 [Ontologia_Class10])
	(MedioTransporte [KB_156423_Class60])
	(PrecioViaje 70.0)
	(TiempoViaje 13.0))

([Ontologia_Class40022] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class11])
	(Ciudad2 [Ontologia_Class10])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 170.0)
	(TiempoViaje 2.5))

([Ontologia_Class40023] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class11])
	(Ciudad2 [Ontologia_Class10])
	(MedioTransporte [KB_156423_Class61])
	(PrecioViaje 135.0)
	(TiempoViaje 7.0))

([Ontologia_Class40024] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class11])
	(Ciudad2 [Ontologia_Class16])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 900.0)
	(TiempoViaje 18.0))

([Ontologia_Class40025] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class18])
	(Ciudad2 [Ontologia_Class9])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 600.0)
	(TiempoViaje 12.0))

([Ontologia_Class40026] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class18])
	(Ciudad2 [KB_156423_Class30])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 620.0)
	(TiempoViaje 10.5))

([Ontologia_Class40027] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class18])
	(Ciudad2 [Ontologia_Class12])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 270.0)
	(TiempoViaje 5.0))

([Ontologia_Class40028] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class18])
	(Ciudad2 [KB_156423_Class32])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 480.0)
	(TiempoViaje 8.0))

([Ontologia_Class40029] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class19])
	(Ciudad2 [Ontologia_Class17])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 400.0)
	(TiempoViaje 6.0))

([Ontologia_Class40030] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class19])
	(Ciudad2 [Ontologia_Class15])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 670.0)
	(TiempoViaje 10.0))

([Ontologia_Class40031] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class19])
	(Ciudad2 [Ontologia_Class9])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 710.0)
	(TiempoViaje 12.0))

([Ontologia_Class40032] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class19])
	(Ciudad2 [Ontologia_Class14])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 520.0)
	(TiempoViaje 8.0))

([Ontologia_Class40033] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class19])
	(Ciudad2 [KB_156423_Class51])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 580.0)
	(TiempoViaje 9.0))

([Ontologia_Class40034] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class17])
	(Ciudad2 [Ontologia_Class9])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 480.0)
	(TiempoViaje 6.0))

([Ontologia_Class40035] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class17])
	(Ciudad2 [KB_156423_Class30])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 390.0)
	(TiempoViaje 4.5))

([Ontologia_Class40036] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class17])
	(Ciudad2 [Ontologia_Class14])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 430.0)
	(TiempoViaje 6.0))

([Ontologia_Class40037] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class17])
	(Ciudad2 [KB_156423_Class51])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 410.0)
	(TiempoViaje 5.0))

([Ontologia_Class40038] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class17])
	(Ciudad2 [Ontologia_Class10])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 260.0)
	(TiempoViaje 3.0))

([Ontologia_Class40039] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class17])
	(Ciudad2 [Ontologia_Class10])
	(MedioTransporte [KB_156423_Class57])
	(PrecioViaje 200.0)
	(TiempoViaje 40.0))

([Ontologia_Class40040] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class15])
	(Ciudad2 [Ontologia_Class9])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 960.0)
	(TiempoViaje 20.0))

([Ontologia_Class40041] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class15])
	(Ciudad2 [Ontologia_Class14])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 750.0)
	(TiempoViaje 16.0))

([Ontologia_Class40042] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class15])
	(Ciudad2 [Ontologia_Class12])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 760.0)
	(TiempoViaje 14.0))

([Ontologia_Class40043] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class15])
	(Ciudad2 [Ontologia_Class16])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 660.0)
	(TiempoViaje 8.0))

([Ontologia_Class40044] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class9])
	(Ciudad2 [KB_156423_Class30])
	(MedioTransporte [KB_156423_Class60])
	(PrecioViaje 90.0)
	(TiempoViaje 16.0))

([Ontologia_Class40045] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class25])
	(Ciudad2 [Ontologia_Class9])
	(MedioTransporte [KB_156423_Class60])
	(PrecioViaje 80.0)
	(TiempoViaje 15.0))

([Ontologia_Class40046] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class9])
	(Ciudad2 [KB_156423_Class30])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 110.0)
	(TiempoViaje 2.5))

([Ontologia_Class40047] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class9])
	(Ciudad2 [Ontologia_Class14])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 420.0)
	(TiempoViaje 7.0))

([Ontologia_Class40048] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class9])
	(Ciudad2 [Ontologia_Class12])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 650.0)
	(TiempoViaje 9.0))

([Ontologia_Class40049] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class9])
	(Ciudad2 [KB_156423_Class51])
	(MedioTransporte [KB_156423_Class60])
	(PrecioViaje 60.0)
	(TiempoViaje 6.5))

([Ontologia_Class40050] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class9])
	(Ciudad2 [KB_156423_Class51])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 155.0)
	(TiempoViaje 1.5))

([Ontologia_Class40051] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class9])
	(Ciudad2 [KB_156423_Class32])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 740.0)
	(TiempoViaje 12.0))

([Ontologia_Class40052] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class9])
	(Ciudad2 [Ontologia_Class10])
	(MedioTransporte [KB_156423_Class60])
	(PrecioViaje 70.0)
	(TiempoViaje 8.0))

([Ontologia_Class40053] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class9])
	(Ciudad2 [Ontologia_Class10])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 200.0)
	(TiempoViaje 2.5))

([Ontologia_Class40054] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class9])
	(Ciudad2 [Ontologia_Class16])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 1100.0)
	(TiempoViaje 25.0))

([Ontologia_Class40055] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class30])
	(Ciudad2 [Ontologia_Class14])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 410.0)
	(TiempoViaje 6.0))

([Ontologia_Class40056] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class30])
	(Ciudad2 [Ontologia_Class14])
	(MedioTransporte [KB_156423_Class60])
	(PrecioViaje 90.0)
	(TiempoViaje 54.0))

([Ontologia_Class40057] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class30])
	(Ciudad2 [Ontologia_Class14])
	(MedioTransporte [KB_156423_Class61])
	(PrecioViaje 150.0)
	(TiempoViaje 25.0))

([Ontologia_Class40058] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class30])
	(Ciudad2 [Ontologia_Class12])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 670.0)
	(TiempoViaje 10.0))

([Ontologia_Class40059] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class30])
	(Ciudad2 [KB_156423_Class51])
	(MedioTransporte [KB_156423_Class60])
	(PrecioViaje 85.0)
	(TiempoViaje 13.0))

([Ontologia_Class40060] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class30])
	(Ciudad2 [KB_156423_Class51])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 180.0)
	(TiempoViaje 2.5))

([Ontologia_Class40061] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class30])
	(Ciudad2 [KB_156423_Class51])
	(MedioTransporte [KB_156423_Class61])
	(PrecioViaje 150.0)
	(TiempoViaje 6.0))

([Ontologia_Class40062] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class30])
	(Ciudad2 [KB_156423_Class32])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 720.0)
	(TiempoViaje 12.0))

([Ontologia_Class40063] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class30])
	(Ciudad2 [Ontologia_Class10])
	(MedioTransporte [KB_156423_Class60])
	(PrecioViaje 80.0)
	(TiempoViaje 16.0))

([Ontologia_Class40064] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class30])
	(Ciudad2 [Ontologia_Class10])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 220.0)
	(TiempoViaje 3.0))

([Ontologia_Class40065] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class30])
	(Ciudad2 [Ontologia_Class10])
	(MedioTransporte [KB_156423_Class61])
	(PrecioViaje 180.0)
	(TiempoViaje 9.0))

([Ontologia_Class40066] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class14])
	(Ciudad2 [Ontologia_Class12])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 750.0)
	(TiempoViaje 14.0))

([Ontologia_Class40067] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class14])
	(Ciudad2 [KB_156423_Class51])
	(MedioTransporte [KB_156423_Class60])
	(PrecioViaje 80.0)
	(TiempoViaje 24.0))

([Ontologia_Class40068] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class14])
	(Ciudad2 [KB_156423_Class51])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 240.0)
	(TiempoViaje 4.0))

([Ontologia_Class40069] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class14])
	(Ciudad2 [KB_156423_Class51])
	(MedioTransporte [KB_156423_Class61])
	(PrecioViaje 160.0)
	(TiempoViaje 9.0))

([Ontologia_Class40070] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class14])
	(Ciudad2 [Ontologia_Class10])
	(MedioTransporte [KB_156423_Class60])
	(PrecioViaje 85.0)
	(TiempoViaje 24.0))

([Ontologia_Class40071] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class14])
	(Ciudad2 [Ontologia_Class10])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 260.0)
	(TiempoViaje 4.0))

([Ontologia_Class40072] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class14])
	(Ciudad2 [Ontologia_Class10])
	(MedioTransporte [KB_156423_Class61])
	(PrecioViaje 180.0)
	(TiempoViaje 10.0))

([Ontologia_Class40073] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class14])
	(Ciudad2 [Ontologia_Class16])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 740.0)
	(TiempoViaje 13.0))

([Ontologia_Class40074] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class12])
	(Ciudad2 [KB_156423_Class51])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 680.0)
	(TiempoViaje 9.5))

([Ontologia_Class40075] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class12])
	(Ciudad2 [KB_156423_Class32])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 540.0)
	(TiempoViaje 8.0))

([Ontologia_Class40076] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class12])
	(Ciudad2 [Ontologia_Class10])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 730.0)
	(TiempoViaje 12.0))

([Ontologia_Class40077] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class12])
	(Ciudad2 [Ontologia_Class16])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 810.0)
	(TiempoViaje 16.5))

([Ontologia_Class40078] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class51])
	(Ciudad2 [KB_156423_Class32])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 770.0)
	(TiempoViaje 13.0))

([Ontologia_Class40079] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class51])
	(Ciudad2 [Ontologia_Class10])
	(MedioTransporte [KB_156423_Class60])
	(PrecioViaje 80.0)
	(TiempoViaje 14.0))

([Ontologia_Class40080] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class51])
	(Ciudad2 [Ontologia_Class10])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 220.0)
	(TiempoViaje 2.0))

([Ontologia_Class40081] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class51])
	(Ciudad2 [Ontologia_Class10])
	(MedioTransporte [KB_156423_Class61])
	(PrecioViaje 140.0)
	(TiempoViaje 7.0))

([Ontologia_Class40082] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class32])
	(Ciudad2 [Ontologia_Class16])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 780.0)
	(TiempoViaje 14.5))

([Ontologia_Class40084] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class10])
	(Ciudad2 [Ontologia_Class16])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 840.0)
	(TiempoViaje 16.0))

([Ontologia_Class50010] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class25])
	(Ciudad2 [Ontologia_Class19])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 550.0)
	(PuntuacionTransporte 0)
	(TiempoViaje 8.0))

([Ontologia_Class50011] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class25])
	(Ciudad2 [Ontologia_Class15])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 790.0)
	(PuntuacionTransporte 0)
	(TiempoViaje 22.0))

([Ontologia_Class50012] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class25])
	(Ciudad2 [KB_156423_Class32])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 800.0)
	(PuntuacionTransporte 0)
	(TiempoViaje 13.0))

([Ontologia_Class50013] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class25])
	(Ciudad2 [Ontologia_Class16])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 1100.0)
	(PuntuacionTransporte 0)
	(TiempoViaje 25.0))

([Ontologia_Class50014] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class11])
	(Ciudad2 [Ontologia_Class18])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 640.0)
	(PuntuacionTransporte 0)
	(TiempoViaje 13.0))

([Ontologia_Class50015] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class11])
	(Ciudad2 [KB_156423_Class32])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 700.0)
	(PuntuacionTransporte 0)
	(TiempoViaje 13.0))

([Ontologia_Class50016] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class18])
	(Ciudad2 [Ontologia_Class19])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 720.0)
	(PuntuacionTransporte 0)
	(TiempoViaje 18.0))

([Ontologia_Class50018] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class18])
	(Ciudad2 [Ontologia_Class17])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 920.0)
	(PuntuacionTransporte 0)
	(TiempoViaje 16.0))

([Ontologia_Class50019] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class18])
	(Ciudad2 [Ontologia_Class15])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 870.0)
	(PuntuacionTransporte 0)
	(TiempoViaje 21.0))

([Ontologia_Class50020] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class18])
	(Ciudad2 [Ontologia_Class14])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 970.0)
	(PuntuacionTransporte 0)
	(TiempoViaje 19.0))

([Ontologia_Class50021] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class18])
	(Ciudad2 [KB_156423_Class51])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 640.0)
	(PuntuacionTransporte 0)
	(TiempoViaje 13.0))

([Ontologia_Class50022] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class18])
	(Ciudad2 [Ontologia_Class10])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 710.0)
	(PuntuacionTransporte 0)
	(TiempoViaje 15.0))

([Ontologia_Class50023] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class18])
	(Ciudad2 [Ontologia_Class16])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 1000.0)
	(PuntuacionTransporte 0)
	(TiempoViaje 23.0))

([Ontologia_Class50024] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class19])
	(Ciudad2 [KB_156423_Class30])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 750.0)
	(PuntuacionTransporte 0)
	(TiempoViaje 13.0))

([Ontologia_Class50025] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class19])
	(Ciudad2 [Ontologia_Class12])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 1200.0)
	(PuntuacionTransporte 0)
	(TiempoViaje 24.0))

([Ontologia_Class50026] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class19])
	(Ciudad2 [KB_156423_Class32])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 1250.0)
	(PuntuacionTransporte 0)
	(TiempoViaje 25.0))

([Ontologia_Class50027] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class19])
	(Ciudad2 [Ontologia_Class10])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 800.0)
	(PuntuacionTransporte 0)
	(TiempoViaje 15.0))

([Ontologia_Class50028] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class19])
	(Ciudad2 [Ontologia_Class16])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 580.0)
	(PuntuacionTransporte 0)
	(TiempoViaje 10.0))

([Ontologia_Class50029] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class17])
	(Ciudad2 [Ontologia_Class15])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 860.0)
	(PuntuacionTransporte 0)
	(TiempoViaje 16.0))

([Ontologia_Class50030] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class17])
	(Ciudad2 [Ontologia_Class12])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 950.0)
	(PuntuacionTransporte 0)
	(TiempoViaje 18.0))

([Ontologia_Class50031] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class17])
	(Ciudad2 [KB_156423_Class32])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 1050.0)
	(PuntuacionTransporte 0)
	(TiempoViaje 21.0))

([Ontologia_Class50032] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class17])
	(Ciudad2 [Ontologia_Class16])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 990.0)
	(PuntuacionTransporte 0)
	(TiempoViaje 20.0))

([Ontologia_Class50033] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class15])
	(Ciudad2 [KB_156423_Class30])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 980.0)
	(PuntuacionTransporte 0)
	(TiempoViaje 22.0))

([Ontologia_Class50034] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class15])
	(Ciudad2 [KB_156423_Class51])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 920.0)
	(PuntuacionTransporte 0)
	(TiempoViaje 20.5))

([Ontologia_Class50035] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class15])
	(Ciudad2 [KB_156423_Class32])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 870.0)
	(PuntuacionTransporte 0)
	(TiempoViaje 18.0))

([Ontologia_Class50036] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class15])
	(Ciudad2 [Ontologia_Class10])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 760.0)
	(PuntuacionTransporte 0)
	(TiempoViaje 20.0))

([Ontologia_Class50037] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class30])
	(Ciudad2 [Ontologia_Class16])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 1200.0)
	(PuntuacionTransporte 0)
	(TiempoViaje 26.0))

([Ontologia_Class50038] of  MapaDeTransportes

	(Ciudad1 [Ontologia_Class14])
	(Ciudad2 [KB_156423_Class32])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 700.0)
	(PuntuacionTransporte 0)
	(TiempoViaje 15.0))

([Ontologia_Class50039] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class51])
	(Ciudad2 [Ontologia_Class16])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 1000.0)
	(PuntuacionTransporte 0)
	(TiempoViaje 25.5))

([Ontologia_Class50040] of  MapaDeTransportes

	(Ciudad1 [KB_156423_Class32])
	(Ciudad2 [Ontologia_Class10])
	(MedioTransporte [KB_156423_Class59])
	(PrecioViaje 900.0)
	(PuntuacionTransporte 0)
	(TiempoViaje 15.0))

([Ontologia_Class9] of  Ciudad

	(ActividadesDisponible
		[KB_156423_Class72]
		[KB_156423_Class71]
		[KB_156423_Class70]
		[Ontologia_Class20011]
		[Ontologia_Class20012]
		[KB_156423_Class50]
		[Ontologia_Class20018]
		[Ontologia_Class20020]
		[Ontologia_Class20016]
		[Ontologia_Class20009]
		[Ontologia_Class20021]
		[Ontologia_Class20015]
		[Ontologia_Class20017]
		[Ontologia_Class30045]
		[Ontologia_Class30046]
		[Ontologia_Class30054]
		[Ontologia_Class30049])
	(AlojamientosDisponibles
		[Ontologia_Class10029]
		[Ontologia_Class10031]
		[Ontologia_Class10030])
	(Calidad Alta)
	(Europea TRUE)
	(Exotica FALSE)
	(Nombre "Londres"))
)






;; --------------------------------------------------------------------------------------------------------------------
;; ------------------------------------------------  FUNCIONES  -------------------------------------------------------
;; --------------------------------------------------------------------------------------------------------------------
;;; Funcion que retorna el elemento con puntuacion maxima
(deffunction maximo-puntuacion ($?lista)
	(bind ?maximo -1)
	(bind ?elemento nil)
	(progn$ (?curr-rec $?lista)
		(bind ?curr-cont (send ?curr-rec get-contenido))
		(bind ?curr-punt (send ?curr-rec get-puntuacion))
		(if (> ?curr-punt ?maximo)
			then
			(bind ?maximo ?curr-punt)
			(bind ?elemento ?curr-rec)
		)
	)
	?elemento
)

;;; Funcion para hacer una pregunta con lista de respuestas cualquiera
(deffunction pregunta-opciones (?question $?allowed-values)
   (printout t ?question)
   (bind ?answer (read))
   (if (lexemep ?answer)
       then (bind ?answer (lowcase ?answer)))
   (while (not (member ?answer ?allowed-values)) do
      (printout t ?question)
      (bind ?answer (read))
      (if (lexemep ?answer)
          then (bind ?answer (lowcase ?answer))))
   ?answer
)


;;; Funcion para hacer una pregunta de tipo si/no
(deffunction pregunta-si-no (?question)
   (bind ?response (pregunta-opciones ?question si no))
   (if (or (eq ?response si) (eq ?response s))
       then TRUE
       else FALSE)
)

;;; Funcion para hacer una pregunta con respuesta numerica unica
(deffunction pregunta-numerica (?pregunta ?rangini ?rangfi)
	(format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi)
	(bind ?respuesta (read))
	(while (not(and(>= ?respuesta ?rangini)(<= ?respuesta ?rangfi))) do
		(format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi)
		(bind ?respuesta (read))
	)
	?respuesta
)

;;; Funcion para hacer pregunta con indice de respuestas posibles
(deffunction pregunta-indice (?pregunta $?valores-posibles)
    (bind ?linea (format nil "%s" ?pregunta))
    (printout t ?linea crlf)
    (progn$ (?var ?valores-posibles)
            (bind ?linea (format nil "  %d. %s" ?var-index ?var))
            (printout t ?linea crlf)
    )
    (bind ?respuesta (pregunta-numerica "Escoge una opción:" 1 (length$ ?valores-posibles)))
	?respuesta
)

;;; Funcion para hacer una pregunta multi-respuesta con indices
(deffunction pregunta-multi (?pregunta $?valores-posibles)
    (bind ?linea (format nil "%s" ?pregunta))
    (printout t ?linea crlf)
    (progn$ (?var ?valores-posibles)
            (bind ?linea (format nil "  %d. %s" ?var-index ?var))
            (printout t ?linea crlf)
    )
    (format t "%s" "Indica los números separados por un espacio: ")
    (bind ?resp (readline))
    (bind ?numeros (str-explode ?resp))
    (bind $?lista (create$ ))
    (progn$ (?var ?numeros)
        (if (and (integerp ?var) (and (>= ?var 1) (<= ?var (length$ ?valores-posibles))))
            then
                (if (not (member$ ?var ?lista))
                    then (bind ?lista (insert$ ?lista (+ (length$ ?lista) 1) ?var))
                )
        )
    )
    ?lista
)



;; --------------------------------------------------------------------------------------------------------------------
;; --------------------------------------------------  TEMPLATES-------------------------------------------------------
;; --------------------------------------------------------------------------------------------------------------------

(deftemplate RestriccionPresupuesto
	(slot presupuesto (type STRING) )
)



;; --------------------------------------------------------------------------------------------------------------------
;; -----------------------------------------------------  MAIN  -------------------------------------------------------
;; --------------------------------------------------------------------------------------------------------------------

(defmodule MAIN (export ?ALL))

(defrule initialRule "Regla inicial"
	(initial-fact)
	=>
	(printout t "====================================================================" crlf)
  	(printout t "=         Sistema de recomendacion de viajes      				    =" crlf)
	(printout t "====================================================================" crlf)
  	(printout t crlf)
	(printout t "¡Bienvenido al sistema de recomendacion de viajes! A continuacion se le formularan una serie de preguntas para poder recomendarle un paquete vacacional que se ajuste a sus necesidades." crlf)
	(printout t crlf)
	(assert (nuevo_viaje))
	(focus modulo_preguntas)
)


;; --------------------------------------------------------------------------------------------------------------------
;; ---------------------------------------------  MODULO DE PREGUNTAS  ------------------------------------------------
;; --------------------------------------------------------------------------------------------------------------------

; Modulo para obtener los datos del usuario que necesitaremos para inferir
(defmodule modulo_preguntas
	(import MAIN ?ALL)
	(export ?ALL)
)

(defrule viajar-ninos ""
	(declare (salience 10))
	(nuevo_viaje)
	=>
    (if (pregunta-si-no "Va a viajar con ninos? [si/no] ")
       then
	   (assert (info-viaje con-ninos)))
       else
       (assert (info-viaje sin-ninos)))

(defrule ciudad-europea ""
	(declare (salience 10))
	(nuevo_viaje)
	=>
    (if (pregunta-si-no "Quiere viajar más allá de Europa? [si/no] ")
       then
	   (assert (info-viaje europa-y-internacional)))
       else
       (assert (info-viaje solo-europa)))

(defrule numero-dias ""
	(declare (salience 10))
	(nuevo_viaje)
	=>
	(bind ?respuesta (pregunta-numerica "Cuantos dias vas a querer estar viajando? [entre 0 - 30] " 0 30))
	(assert (info-viaje numero-dias ?respuesta))
)

(defrule tipo-vacaciones ""
	(declare (salience 10))
	(nuevo_viaje)
	=>
	(bind ?respuesta (pregunta-opciones "Que tipo de vacaciones desea? [aventura/ocio/relax/cultural] " aventura ocio relax cultural))
	(if (eq ?respuesta aventura)
	   then
	   (assert (info-viaje tipo-actividad aventura))
	   else (if (eq ?respuesta ocio)
				 then
				 (assert (info-viaje tipo-actividad ocio))
				 else (if (eq ?respuesta relax)
						then
						 (assert (info-viaje tipo-actividad relax))
						 else
						 (assert (info-viaje tipo-actividad cultural)))))
)



(defrule caracteristicas-viaje ""
	(declare (salience 10))
	(nuevo_viaje)
	=>
	(bind ?respuesta (pregunta-opciones "Que tipo de viaje esta buscando? [familiar/pareja/escolar/amigos] " familiar pareja escolar amigos))
	(if (eq ?respuesta pareja) then
		(assert (tipo-viaje viaje-pareja))
	else
		;(bind ?cantidad (pregunta-numerica "Cuantas personas realizaran el viaje? (numero) " 1 50))
		;(assert (cantidad-personas ?cantidad))

		(if (eq ?respuesta familiar) then
		(assert (tipo-viaje viaje-familiar))
		else (if (eq ?respuesta escolar) then
			(assert (tipo-viaje viaje-escolar))
			else (if (eq ?respuesta amigos) then
				(assert (tipo-viaje viaje-amigos))
				(if (pregunta-si-no "Son todos los componentes del grupo mayores de edad? [si/no] ") then
					(assert (componentes-grupo mayor-edad))
					else
					(assert (componentes-grupo menor-edad)))))))

)


(defrule ciudad-origen ""
	(declare (salience 80))
	(nuevo_viaje)
	=>
	(bind ?respuesta (pregunta-opciones "Desde que ciudad desea iniciar su viaje? [Barcelona/Madrid/RioDeJaneiro/Paris/Roma/Berlin/NuevaYork/Bahamas/Moscu/Japon/Egipto/Cuba/Delhi/Londres/Sidney] "
	barcelona madrid riodejaneiro paris roma berlin nuevayork bahamas moscu japon egipto cuba delhi londres sidney))
	(assert (ciudadOrigen ?respuesta))
)

;(defrule precio-maximo "Regla para saber el precio maximo del viaje"
	;(declare(salience 80))
	;(nuevo_viaje)
	;=>
	;(bind ?respuesta (pregunta-numerica "Cual es el presupuesto maximo del viaje? " 0.0 99999999.9))
	;(if (and (> ?respuesta 0.0)(< ?respuesta 99999999.9)) then
	;	(assert (RestriccionPresupuesto (presupuesto ?respuesta))))
;)

;(defrule duracion-maxima "Regla para saber la duracion maxima del viaje"
	;(declare(salience 80))
	;(nuevo_viaje)
	;=>
	;(bind ?respuesta (pregunta-numerica "Cual es la duracion maxima del viaje? " 0 99999999))
	;(if (and (> ?respuesta 0)(< ?respuesta 99999999)) then
	;	(assert (RestriccionDias (diasViaje ?respuesta))))
;)

;(defrule recomienda-viaje "END"
;	(declare (salience 1))
;	=>


(defrule finPreguntas "Regla para pasar al modulo de inferencia"
	(declare (salience 1))
	(nuevo_viaje)
	=>
	(printout t crlf)
	(printout t "Modulos: "crlf)
	(printout t "Restricciones y Preferencias almacenadas" crlf)
	(focus inferir_datos)
)

(defrule precioMaximo "Regla para saber el precio maximo del viaje"
	(declare(salience 80))
	(nuevo_viaje)
	=>
	(bind ?respuesta (pregunta-opciones "Cual es el presupuesto del viaje? [bajo/medio/alto]" bajo medio alto))
	(assert (RestriccionPresupuesto (presupuesto ?respuesta)))
)

;; --------------------------------------------------------------------------------------------------------------------
;; ------------------------------------------------  INFRENCIA DE DATOS  ----------------------------------------------
;; --------------------------------------------------------------------------------------------------------------------

(defmodule inferir_datos
	(import MAIN ?ALL)
	(import modulo_preguntas ?ALL)
	(export ?ALL)
)


(defrule activaRestricciones ""
	(nuevo_viaje)
	=>
	(assert (restricciones-inferencia))
)

(defrule filtraCiudadesSoloEuropa ""
	(declare (salience 80))
	(restricciones-inferencia)
	(info-viaje solo-europa)
	=>
	(bind ?ciudades (find-all-instances ((?ins Ciudad)) TRUE))
	(loop-for-count (?i 1 (length$ ?ciudades)) do
		(bind ?ciudad (nth$ ?i ?ciudades))
		(bind ?eseuropea (send ?ciudad get-Europea))
		(bind ?puntuacionAnterior (send ?ciudad get-PuntuacionCiudad))
		(if (eq ?eseuropea TRUE) then
			(send ?ciudad put-PuntuacionCiudad (+ ?puntuacionAnterior 100))
		else
			(send ?ciudad put-PuntuacionCiudad (- ?puntuacionAnterior 100))
		)
	)
)

;aventura/ocio/relax/cultural
(deffunction anadePuntuacionActividadTipo (?tipo ?valor)
	(if (eq ?tipo ocio) then (bind ?x ActividadOcio) else (if (eq ?tipo aventura) then (bind ?x ActividadAventura)
		else (if (eq ?tipo relax) then (bind ?x ActividadRelax) else (bind ?x ActividadCultural))))

	(bind ?actividades (find-all-instances ((?ins ?x)) TRUE))
	(loop-for-count (?i 1 (length$ ?actividades)) do
		(bind ?actividad (nth$ ?i ?actividades))
		(bind ?puntuacionAnterior (send ?actividad get-PuntuacionActividad))

		(send ?actividad put-PuntuacionActividad (+ ?puntuacionAnterior ?valor))
	)
)

(defrule filtraTiposActividad "Da puntuacion a las actividades que sean del tipo escogido"
	(declare (salience 80))
	(restricciones-inferencia)
	(info-viaje tipo-actividad ?tipoActividad)
	=>
	(if (eq ?tipoActividad ocio) then
		(anadePuntuacionActividadTipo aventura -100)
		(anadePuntuacionActividadTipo ocio      100)
		(anadePuntuacionActividadTipo relax    -100)
		(anadePuntuacionActividadTipo cultural -100)

	else(if (eq ?tipoActividad aventura) then
		(printout t "ASSSSSSSSSSSSS" crlf)
		(anadePuntuacionActividadTipo aventura  100)
		(anadePuntuacionActividadTipo ocio     -100)
		(anadePuntuacionActividadTipo relax    -100)
		(anadePuntuacionActividadTipo cultural -100)

	else(if (eq ?tipoActividad relax) then
		(anadePuntuacionActividadTipo aventura -100)
		(anadePuntuacionActividadTipo ocio     -100)
		(anadePuntuacionActividadTipo relax     100)
		(anadePuntuacionActividadTipo cultural -100)
	else
		(anadePuntuacionActividadTipo aventura -100)
		(anadePuntuacionActividadTipo ocio     -100)
		(anadePuntuacionActividadTipo relax    -100)
		(anadePuntuacionActividadTipo cultural  100)
	)))
)

(defrule finRestricciones "Regla para pasar al modulo de recomendaciones"
	(declare (salience 1))
	(restricciones-inferencia)
	=>
	(printout t crlf)
	(printout t "Pasando al modulo de recomendaciones:"crlf)
	(focus recomendaciones)
)



;; --------------------------------------------------------------------------------------------------------------------
;; -------------------------------------------  MODULO DE RECOMENDACIONES  --------------------------------------------
;; --------------------------------------------------------------------------------------------------------------------

; En este modulo obtendremos las posibles recomendaciones de viaje mediante la aplicación
; de las restricciones i prioridades en todas las posibles instancias

(defmodule recomendaciones
	(import MAIN ?ALL)
	(import inferir_datos ?ALL)

	(export ?ALL)
)

(defrule activaRecomendaciones ""
	(nuevo_viaje)
	(restricciones-inferencia)
	=>
	(printout t "|                                                                                                                                     |" crlf)
	(printout t "|                                              TUS VIAJES RECOMENDADOS SON:                                                           |" crlf)
	(printout t "|                                                                                                                                     |" crlf)
	(assert (recomendacion-ready))
)

(deffunction obtenerTodasLasActividades () "Hace la lista de todas las actividades"
	(bind ?actividadesCulturales (find-all-instances ((?ins ActividadCultural)) TRUE))
	(bind ?actividadesOcio 		 (find-all-instances ((?ins ActividadOcio)) TRUE))
	(bind ?actividadesRelax      (find-all-instances ((?ins ActividadRelax)) TRUE))
	(bind ?actividadesAventura   (find-all-instances ((?ins ActividadAventura)) TRUE))

	(bind ?lista (create$ ?actividadesOcio ?actividadesCulturales))
	(bind ?lista (create$ ?lista ?actividadesRelax))
	(bind ?lista (create$ ?lista ?actividadesAventura))

	?lista
)
(deffunction buscaActividadesOfrecidas (?ciudad ?todasActividades) "Busca todas las actividades que se pueden realizar en esa ciudad"
	(bind ?actividadesOfrecidasPorCiudad (send ?ciudad get-ActividadesDisponible))
	(bind ?actividadesOfrecidas (create$))

	(loop-for-count (?i 1 (length$ ?todasActividades)) do
		(bind ?act (nth$ ?i ?todasActividades))
		(bind ?esta 0)

		; si act esta en actividadesOfrecidasPorCiudad la añadimos
		; sino pasamos
		; (recordemos que la lista de todasActividades YA ESTA ORDENADA)

		(loop-for-count (?j 1 (length$ ?actividadesOfrecidasPorCiudad)) do
			(bind ?actOfrecida (nth$ ?j ?actividadesOfrecidasPorCiudad))

			(if (eq (send ?act get-NombreActividad) (send ?actOfrecida get-NombreActividad)) then
				(bind ?esta 1)
				(break)
			)
		)

		(if (eq ?esta 1) then ;está, la añadimos a la lista
			(bind ?actividadesOfrecidas (create$ ?actividadesOfrecidas ?act))
		)
	)

	?actividadesOfrecidas
)

(deffunction encuentra3Aleatorias (?lista) "Funcion que devuelve tres elementos aleatorios de la lista"
	(bind ?lista3 (create$))
	(bind ?yaEscogidos (create$))

	(loop-for-count (?z 1 3) do
		(bind ?noEscogido TRUE)
		(bind ?roll 0)
		(while (eq ?noEscogido TRUE) do
			(bind ?roll (+ (mod (random) (length$ ?lista)) 1)) ;tirada aleatoria
			(bind ?noEscogido FALSE)
			(loop-for-count (?i 1 (length$ ?yaEscogidos)) do ; miramos que no lo hayamos cogido ya
				(if (eq ?roll (nth$ ?i ?yaEscogidos)) then
					(bind ?noEscogido TRUE)
					(break)
				)
			)
		)

		(bind ?lista3 (create$ ?lista3 (nth$ ?roll ?lista))) ;añadimos el elemento
		(bind ?yaEscogidos (create$ ?yaEscogidos ?roll)) ;añadimos el indice escogido
	)

	?lista3
)

(deffunction encuentra3Actividades (?actividadesOfrecidas) "Funcion que devuelve 3 actividades escogiendo al azar entre las de puntuacion maxima. PRE: actividadesOfrecidas está ordenado"
	(bind ?posibles (create$))

	(bind ?i 1)
	(while (<= ?i (length$ ?actividadesOfrecidas)) do
		(bind ?act1 (nth$ ?i ?actividadesOfrecidas)) ; actividad i
		(bind ?posibles (create$ ?posibles ?act1)) ; añade la actividad1

		(bind ?dondeNosHemosQuedado (+ ?i 1))
		; Añadimos todas aquellas acts que tengan puntuacion = maxima hasta el momento
		(loop-for-count (?j (+ ?i 1) (length$ ?actividadesOfrecidas)) do
			(bind ?act2 (nth$ ?j ?actividadesOfrecidas)) ; actividad i+1,+2,...

			(if (eq (send ?act1 get-PuntuacionActividad) (send ?act2 get-PuntuacionActividad)) then
				(bind ?posibles (create$ ?posibles ?act2)) ; añade la actividad2
				(if (neq ?i 1) then (if (>= (length$ ?posibles) 3) then (break))) ;Para la busqueda --> Tenemos todas las maximas + la que faltaba P.E: 2 de 100 y 1 de 99, en vez de 2 de 100 y 5 de 99
			else
				(bind ?dondeNosHemosQuedado ?j)
				(break)
			)
		)
		(if (>= (length$ ?posibles) 3) then (break)) ;No necesitamos mas

		(bind ?i ?dondeNosHemosQuedado);sino seguimos buscando incrementando en 1 o hasta la siguiente actividad con puntuacion diferente
	)

	(bind ?tresActividades (encuentra3Aleatorias ?posibles))
	?tresActividades
)

(deffunction encuentraActividades (?nDias ?actividadesOfrecidas)  "PRE: actividadesOfrecidas esta ordenado"

	(bind ?acts 1)
	(bind ?actActual 1)
	(bind ?nActs (* ?nDias 3))
	(bind ?listaFinal (create$))

	(while (<= ?acts ?nActs) do
		(bind ?lista (create$))
		(if (> ?actActual (length$ ?actividadesOfrecidas)) then (bind ?actActual 1)) ;por si no hay suficientes

		; Buscamos las actividades con puntuacion maxima
		(bind ?act (nth$ ?actActual ?actividadesOfrecidas))
		(bind ?puntuacionMaxima (send ?act get-PuntuacionActividad))
		(bind ?lista (create$ ?lista ?act))

		(loop-for-count (?i (+ ?actActual 1) (length$ ?actividadesOfrecidas)) do
			(bind ?act2 (nth$ ?i ?actividadesOfrecidas))
			(bind ?puntAct2 (send ?act2 get-PuntuacionActividad))

			(if (neq ?puntuacionMaxima ?puntAct2) then (break))
			(bind ?lista (create$ ?lista ?act2))
		)
		; Ahora tenemos todas las actividades con puntuacion maxima
		; Tenemos que coger al azar cada una de ellas y rellenar con las siguientes
		(bind ?yaEscogidos (create$))
		(while (and (neq (length$ ?yaEscogidos) (length$ ?lista)) (<= ?acts ?nActs)) do ;mientras no haya puesto todas las actvidades con puntuacion maxima o haya acabado de colocar todas las actividades

			(bind ?noEscogido TRUE)
			(bind ?roll 0)
			(while (eq ?noEscogido TRUE) do
				(bind ?roll (+ (mod (random) (length$ ?lista)) 1)) ;tirada aleatoria
				(bind ?noEscogido FALSE)
				(loop-for-count (?i 1 (length$ ?yaEscogidos)) do ; miramos que no lo hayamos cogido ya
					(if (eq ?roll (nth$ ?i ?yaEscogidos)) then
						(bind ?noEscogido TRUE)
						(break)
					)
				)
			)

			(bind ?listaFinal (create$ ?listaFinal (nth$ ?roll ?lista))) ;añadimos el elemento
			(bind ?yaEscogidos (create$ ?yaEscogidos ?roll)) ;añadimos el indice escogido
			(bind ?acts (+ ?acts 1))
			(bind ?actActual (+ ?actActual 1))
		)
	)

;	(loop-for-count (?i 1 (length$ ?listaFinal)) do
;		(printout t (send (nth$ ?i ?listaFinal) get-NombreActividad) crlf)
;	)
	?listaFinal
)


(deffunction obtenerHotel (?ciudad ?presupuesto) "obtiene el hotel de la ciudad que se adhiere al presupuesto"
	(bind ?hotels (send ?ciudad get-AlojamientosDisponibles))
	(bind ?hotel1 (nth$ 1 ?hotels))
	(bind ?hotel2 (nth$ 2 ?hotels))
	(bind ?hotel3 (nth$ 3 ?hotels))
	(bind ?ciudades (sort sort_precio_por_noche ?hotels)) ; Y ASI SE ORDENA FUCK YEA
	(if (eq ?presupuesto "alto") then
		(bind ?hotel (nth$ 1 ?hotels))
		else
		(if (eq ?presupuesto "bajo") then
			(bind ?hotel (nth$ 3 ?hotels))
			else
				;presupuesto medio
				(bind ?hotel (nth$ 2 ?hotels))
		)
	)
	?hotel
)










; ////////////////////////////////////////////////

(deffunction sort_transporte (?t1 ?t2) "Funcion comparativa para ordenar transportes"
	(< (send ?t1 get-PuntuacionTransporte) (send ?t2 get-PuntuacionTransporte))
)

(deffunction encuentraMejorTransporte (?c1 ?c2 ?arg1) "Funcion que devuelve el transporte con mas puntuacion entre dos ciudades"
	(if (= ?arg1 2) then	; Con arg1 = 1 ?c1 es un String
		(bind ?c1 (lowcase (send ?c1 get-Nombre)))
		(printout f "ARG = 2" crlf)
	)
	(bind ?c2 (lowcase (send ?c2 get-Nombre)))

	(bind ?transportes (find-all-instances ((?ins MapaDeTransportes)) TRUE))
	(bind ?transportes (sort sort_transporte ?transportes))

	(bind ?transporte)

	(loop-for-count (?i 1 (length ?transportes)) do
		(bind ?transporte (nth$ ?i ?transportes))
		(bind ?ciudad1 (send ?transporte get-Ciudad1)) (bind ?ciudad1 (lowcase (send ?ciudad1 get-Nombre)))
		(bind ?ciudad2 (send ?transporte get-Ciudad2)) (bind ?ciudad2 (lowcase(send ?ciudad2 get-Nombre)))

		(if (or	(and (eq ?ciudad1 ?c1) (eq ?ciudad2 ?c2)) (and (eq ?ciudad1 ?c2) (eq ?ciudad2 ?c1))) then
			(break)
		)
	)

	?transporte
)

; //////////////////////////////////////////////////












(defrule obtenerRecomendaciones "Regla para obtener las recomendaciones de viaje calculadas por el sistema"
	(recomendacion-ready)
	(info-viaje numero-dias ?dias)
	(RestriccionPresupuesto (presupuesto ?presupuesto))
	(ciudadOrigen ?ciudadOrigen)
	=>
	;(bind ?ciudades (find-all-instances ((?ins Ciudad)) TRUE))
	(bind ?ciudadOrigen (str-cat ?ciudadOrigen))
	(bind ?ciudades (find-all-instances ((?ins Ciudad)) (neq (lowcase ?ins:Nombre) (lowcase ?ciudadOrigen)))) ; no añadimos la ciudad inicial en las ciudades a visitar
	(bind ?ciudades (sort sort_puntuacion ?ciudades)) ; Y ASI SE ORDENA FUCK YEA

	(bind ?todasActividades (obtenerTodasLasActividades))
	(bind ?todasActividades (sort sort_actividad ?todasActividades)) ; Y ASI SE ORDENA FUCK YEA

	(bind ?coste 0.0)

	(printout t "|-------------------------------------------------------------------------------------------------------------------------------------|" crlf)
	(printout t "|                                                                                                                                     |" crlf)
	(printout t "|oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo PACK 1 ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo|" crlf)
	(printout t "|                                                                                                                                     |" crlf)
	(printout t "| DIA |     CIUDAD     |                          ACTIVIDADES                         |        ALOJAMIENTOS        |    TRANSPORTE    |" crlf)
	(printout t "|-------------------------------------------------------------------------------------------------------------------------------------|" crlf)
	(bind ?diasPorCiudad (integer (/ ?dias 3)))
	(bind ?residuo (mod ?dias 3))
	(bind ?numCiudadesNegativas 0)

	(loop-for-count (?i 1 3) do
		(bind ?ciudad (nth$ ?i ?ciudades))
		(bind ?puntuacionCiudad (send ?ciudad get-PuntuacionCiudad))
		(bind ?actividadesOfrecidas (buscaActividadesOfrecidas ?ciudad ?todasActividades))

		(if (< ?puntuacionCiudad 0) then (+ ?numCiudadesNegativas ?numCiudadesNegativas 1))

		(if (eq ?i 1) then
			(bind ?actividadesAHacer (encuentraActividades (+ ?residuo ?diasPorCiudad) ?actividadesOfrecidas))
			(bind ?pasada 1)
			(loop-for-count (?j 1 (+ ?residuo ?diasPorCiudad)) do
				; DIA
				(printout t "| " ?j)
				(loop-for-count (?z 1 (- 4 (str-length (str-cat ?j)))) do (printout t " ")) ;espacios hasta ciudad

				; CIUDAD
				(printout t "| " (send ?ciudad get-Nombre))
				(loop-for-count (?z 1 (- 15 (str-length (send ?ciudad get-Nombre)))) do (printout t " ")) ;espacios hasta actividades

				; ACTIVIDADES
				(printout t "| ")
				(bind ?nChars 0)
				(loop-for-count (?x ?pasada (+ ?pasada 2)) do
					(printout t (send (nth$ ?x ?actividadesAHacer) get-NombreActividad))
					(bind ?nChars (+ ?nChars (str-length (send (nth$ ?x ?actividadesAHacer) get-NombreActividad))))
					(bind ?coste (+ ?coste (send (nth$ ?x ?actividadesAHacer) get-PrecioActividad)))
					(if (neq ?x (+ ?pasada 2)) then
						(printout t ", ")
						(bind ?nChars (+ ?nChars 2)))
				)
				(bind ?pasada (+ ?pasada 3))
				(loop-for-count (?z 1 (- 61 ?nChars)) do (printout t " ")) ;espacios hasta alojamientos

				; ALOJAMIENTOS
				(printout t "| ")
				(bind ?hotel (obtenerHotel ?ciudad ?presupuesto))
				(printout t (send ?hotel get-NombreAlojamiento))
				(bind ?coste (+ ?coste (send ?hotel get-PrecioPorNoche)))
				(loop-for-count (?z 1 (- 27 (str-length (send ?hotel get-NombreAlojamiento)))) do (printout t " ")) ;espacios hasta alojamientos
				
				
				; TRANSPORTE
				(if (eq ?j 1) then
					(bind ?transporteCiudad (encuentraMejorTransporte ?ciudadOrigen ?ciudad 1))
					(printout t "| " (send (send ?transporteCiudad get-MedioTransporte) get-NombreMedio) "   (" (send ?transporteCiudad get-PrecioViaje) ") C1: "  (send (send ?transporteCiudad get-Ciudad1) get-Nombre) "   C2:" (send (send ?transporteCiudad get-Ciudad2) get-Nombre))
				)
				

				(printout t "| " crlf)
			)
			else
			(bind ?actividadesAHacer (encuentraActividades (+ ?residuo ?diasPorCiudad) ?actividadesOfrecidas))
			(bind ?pasada 1)
			(loop-for-count (?j 1 ?diasPorCiudad) do
				; DIA
				(printout t "| "  (+ (+ ?j (* (- ?i 1) ?diasPorCiudad)) ?residuo))
				(loop-for-count (?z 1 (- 4 (str-length (str-cat  (+ (+ ?j (* (- ?i 1) ?diasPorCiudad)) ?residuo) )))) do (printout t " ")) ;espacios hasta ciudad

				; CIUDAD
				(printout t "| " (send ?ciudad get-Nombre))
				(loop-for-count (?z 1 (- 15 (str-length (send ?ciudad get-Nombre)))) do (printout t " ")) ;espacios hasta actividades

				; ACTIVIDADES
				(printout t "| ")
				(bind ?nChars 0)
				(loop-for-count (?x ?pasada (+ ?pasada 2)) do
					(printout t (send (nth$ ?x ?actividadesAHacer) get-NombreActividad))
					(bind ?nChars (+ ?nChars (str-length (send (nth$ ?x ?actividadesAHacer) get-NombreActividad))))
					(bind ?coste (+ ?coste (send (nth$ ?x ?actividadesAHacer) get-PrecioActividad)))
					(if (neq ?x (+ ?pasada 2)) then
						(printout t ", ")
						(bind ?nChars (+ ?nChars 2)))
				)
				(bind ?pasada (+ ?pasada 3))
				(loop-for-count (?z 1 (- 61 ?nChars)) do (printout t " ")) ;espacios hasta alojamientos

				; ALOJAMIENTOS
				(printout t "| ")
				(bind ?hotel (obtenerHotel ?ciudad ?presupuesto))
				(printout t (send ?hotel get-NombreAlojamiento))
				(bind ?coste (+ ?coste (send ?hotel get-PrecioPorNoche)))
				(loop-for-count (?z 1 (- 27 (str-length (send ?hotel get-NombreAlojamiento)))) do (printout t " ")) ;espacios hasta alojamientos

				(printout t "| " crlf)
				
				; TRANSPORTE
				(if (eq ?j 1) then
					(bind ?ciudadAnterior (nth$ (- ?i 1) ?ciudades))
					(bind ?transporteCiudad (encuentraMejorTransporte ?ciudadAnterior ?ciudad 2))
					(printout t "| " (send (send ?transporteCiudad get-MedioTransporte) get-NombreMedio) "   (" (send ?transporteCiudad get-PrecioViaje) ") C1: "  (send (send ?transporteCiudad get-Ciudad1) get-Nombre) "   C2:" (send (send ?transporteCiudad get-Ciudad2) get-Nombre))
				)
			)
		)
	)
	(if (>= ?numCiudadesNegativas 3) then (printout t "ATENCION: No se ha podido planificar un viaje que cumpla con todas las restricciones" crlf))

	(printout t "|-------------------------------------------------------------------------------------------------------------------------------------|" crlf)
	(printout t "|                                                                                                                                     |" crlf)
	(printout t "|                                                          PRESUPUESTO " ?coste " euros" crlf)
	(printout t "|                                                                                                                                     |" crlf)
	(printout t "|-------------------------------------------------------------------------------------------------------------------------------------|" crlf)
	(printout t "|                                                                                                                                     |" crlf)
	(printout t "|                                                                                                                                     |" crlf)

	(bind ?coste 0.0)


	(printout t "|-------------------------------------------------------------------------------------------------------------------------------------|" crlf)
	(printout t "|                                                                                                                                     |" crlf)
	(printout t "|oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo PACK 2 ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo|" crlf)
	(printout t "|                                                                                                                                     |" crlf)
	(printout t "| DIA |     CIUDAD     |                          ACTIVIDADES                         |        ALOJAMIENTOS        |    TRANSPORTE    |" crlf)
	(printout t "|-------------------------------------------------------------------------------------------------------------------------------------|" crlf)
	(if (> ?dias 8) then
		; Limitamos a 8 ciudades maximo
		(bind ?diasPorCiudad (integer (/ ?dias 8)))
		(bind ?residuo (mod ?dias 8))
		(bind ?numCiudadesNegativas 0)
		(loop-for-count (?i 1 8) do
			(bind ?ciudad (nth$ ?i ?ciudades))
			(bind ?puntuacionCiudad (send ?ciudad get-PuntuacionCiudad))
			(bind ?actividadesOfrecidas (buscaActividadesOfrecidas ?ciudad ?todasActividades))

			(if (< ?puntuacionCiudad 0) then (+ ?numCiudadesNegativas ?numCiudadesNegativas 1))

			(if (<= ?i ?residuo) then
				(bind ?actividadesAHacer (encuentraActividades (+ 1 ?diasPorCiudad) ?actividadesOfrecidas))
				(bind ?pasada 1)

				(loop-for-count (?j 1 (+ ?diasPorCiudad 1)) do
					; DIA
					(printout t "| " ?j)
					(loop-for-count (?z 1 (- 4 (str-length (str-cat ?j)))) do (printout t " ")) ;espacios hasta ciudad

					; CIUDAD
					(printout t "| " (send ?ciudad get-Nombre))
					(loop-for-count (?z 1 (- 15 (str-length (send ?ciudad get-Nombre)))) do (printout t " ")) ;espacios hasta actividades

					; ACTIVIDADES
					(printout t "| ")
					(bind ?nChars 0)
					(loop-for-count (?x ?pasada (+ ?pasada 2)) do
						(printout t (send (nth$ ?x ?actividadesAHacer) get-NombreActividad))
						(bind ?nChars (+ ?nChars (str-length (send (nth$ ?x ?actividadesAHacer) get-NombreActividad))))
						(bind ?coste (+ ?coste (send (nth$ ?x ?actividadesAHacer) get-PrecioActividad)))
						(if (neq ?x (+ ?pasada 2)) then
							(printout t ", ")
							(bind ?nChars (+ ?nChars 2)))
					)
					(bind ?pasada (+ ?pasada 3))
					(loop-for-count (?z 1 (- 61 ?nChars)) do (printout t " ")) ;espacios hasta alojamientos

					; ALOJAMIENTOS
					(printout t "| ")
					(bind ?hotel (obtenerHotel ?ciudad ?presupuesto))
					(printout t (send ?hotel get-NombreAlojamiento))
					(bind ?coste (+ ?coste (send ?hotel get-PrecioPorNoche)))
					(loop-for-count (?z 1 (- 27 (str-length (send ?hotel get-NombreAlojamiento)))) do (printout t " ")) ;espacios hasta alojamientos
					
					
					; TRANSPORTE
					(if (eq ?j 1) then
						(bind ?transporteCiudad (encuentraMejorTransporte ?ciudadOrigen ?ciudad 1))
						(printout t "| " (send (send ?transporteCiudad get-MedioTransporte) get-NombreMedio) "   (" (send ?transporteCiudad get-PrecioViaje) ") C1: "  (send (send ?transporteCiudad get-Ciudad1) get-Nombre) "   C2:" (send (send ?transporteCiudad get-Ciudad2) get-Nombre))
					)
					
					(printout t "| " crlf)
				)
			else
				(bind ?actividadesAHacer (encuentraActividades ?diasPorCiudad ?actividadesOfrecidas))
				(bind ?pasada 1)

				(loop-for-count (?j 1 ?diasPorCiudad) do
					; DIA
					(printout t "| " (+ (+ ?j (* (- ?i 1) ?diasPorCiudad)) ?residuo))
					(loop-for-count (?z 1 (- 4 (str-length (str-cat (+ (+ ?j (* (- ?i 1) ?diasPorCiudad)) ?residuo))))) do (printout t " ")) ;espacios hasta ciudad

					; CIUDAD
					(printout t "| " (send ?ciudad get-Nombre))
					(loop-for-count (?z 1 (- 15 (str-length (send ?ciudad get-Nombre)))) do (printout t " ")) ;espacios hasta actividades

					; ACTIVIDADES
					(printout t "| ")
					(bind ?nChars 0)
					(loop-for-count (?x ?pasada (+ ?pasada 2)) do
						(printout t (send (nth$ ?x ?actividadesAHacer) get-NombreActividad))
						(bind ?nChars (+ ?nChars (str-length (send (nth$ ?x ?actividadesAHacer) get-NombreActividad))))
						(bind ?coste (+ ?coste (send (nth$ ?x ?actividadesAHacer) get-PrecioActividad)))
						(if (neq ?x (+ ?pasada 2)) then
							(printout t ", ")
							(bind ?nChars (+ ?nChars 2)))
					)
					(bind ?pasada (+ ?pasada 3))
					(loop-for-count (?z 1 (- 61 ?nChars)) do (printout t " ")) ;espacios hasta alojamientos

					; ALOJAMIENTOS
					(printout t "| ")
					(bind ?hotel (obtenerHotel ?ciudad ?presupuesto))
					(printout t (send ?hotel get-NombreAlojamiento))
					(bind ?coste (+ ?coste (send ?hotel get-PrecioPorNoche)))
					(loop-for-count (?z 1 (- 27 (str-length (send ?hotel get-NombreAlojamiento)))) do (printout t " ")) ;espacios hasta alojamientos
					
					; TRANSPORTE
					(if (eq ?j 1) then
						(bind ?ciudadAnterior (nth$ (- ?i 1) ?ciudades))
						(bind ?transporteCiudad (encuentraMejorTransporte ?ciudadAnterior ?ciudad 2))
						(printout t "| " (send (send ?transporteCiudad get-MedioTransporte) get-NombreMedio) "   (" (send ?transporteCiudad get-PrecioViaje) ") C1: "  (send (send ?transporteCiudad get-Ciudad1) get-Nombre) "   C2:" (send (send ?transporteCiudad get-Ciudad2) get-Nombre))
					)
				
					(printout t "| " crlf)
				)
			)
		)
		(if (>= ?numCiudadesNegativas 3) then (printout t "ATENCION: No se ha podido planificar un viaje que cumpla con todas las restricciones" crlf))

	else ;sino, una por dia
		(bind ?numCiudadesNegativas 0)

		(loop-for-count (?i 1 ?dias) do
			(bind ?ciudad (nth$ ?i ?ciudades))
			(bind ?puntuacionCiudad (send ?ciudad get-PuntuacionCiudad))
			(bind ?actividadesOfrecidas (buscaActividadesOfrecidas ?ciudad ?todasActividades))

			(if (< ?puntuacionCiudad 0) then (+ ?numCiudadesNegativas ?numCiudadesNegativas 1))

			(bind ?actividadesAHacer (encuentraActividades (+ ?residuo ?diasPorCiudad) ?actividadesOfrecidas))
			(bind ?pasada 1)
			; DIA
			(printout t "| " ?i)
			(loop-for-count (?z 1 (- 4 (str-length (str-cat ?i)))) do (printout t " ")) ;espacios hasta ciudad

			; CIUDAD
			(printout t "| " (send ?ciudad get-Nombre))
			(loop-for-count (?z 1 (- 15 (str-length (send ?ciudad get-Nombre)))) do (printout t " ")) ;espacios hasta actividades

			; ACTIVIDADES
			(printout t "| ")
			(bind ?nChars 0)
			(loop-for-count (?x ?pasada (+ ?pasada 2)) do
				(printout t (send (nth$ ?x ?actividadesAHacer) get-NombreActividad))
				(bind ?nChars (+ ?nChars (str-length (send (nth$ ?x ?actividadesAHacer) get-NombreActividad))))
				(bind ?coste (+ ?coste (send (nth$ ?x ?actividadesAHacer) get-PrecioActividad)))
				(if (neq ?x (+ ?pasada 2)) then
					(printout t ", ")
					(bind ?nChars (+ ?nChars 2)))
			)
			(bind ?pasada (+ ?pasada 3))
			(loop-for-count (?z 1 (- 61 ?nChars)) do (printout t " ")) ;espacios hasta alojamientos

			; ALOJAMIENTOS
			(printout t "| ")
			(bind ?hotel (obtenerHotel ?ciudad ?presupuesto))
			(printout t (send ?hotel get-NombreAlojamiento))
			(loop-for-count (?z 1 (- 27 (str-length (send ?hotel get-NombreAlojamiento)))) do (printout t " ")) ;espacios hasta alojamientos
			
			; TRANSPORTE
			(bind ?ciudadAnterior (nth$ (- ?i 1) ?ciudades))
			(bind ?transporteCiudad (encuentraMejorTransporte ?ciudadAnterior ?ciudad 2))
			(printout t "| " (send (send ?transporteCiudad get-MedioTransporte) get-NombreMedio) "   (" (send ?transporteCiudad get-PrecioViaje) ") C1: "  (send (send ?transporteCiudad get-Ciudad1) get-Nombre) "   C2:" (send (send ?transporteCiudad get-Ciudad2) get-Nombre))
				
			(printout t "| " crlf)
		)
		(if (>= ?numCiudadesNegativas 3) then (printout t "ATENCION: No se ha podido planificar un viaje que cumpla con todas las restricciones" crlf))
	)
	(printout t "|-------------------------------------------------------------------------------------------------------------------------------------|" crlf)
	(printout t "|                                                                                                                                     |" crlf)
	(printout t "|                                                          PRESUPUESTO " ?coste " euros" crlf)
	(printout t "|                                                                                                                                     |" crlf)
	(printout t "|-------------------------------------------------------------------------------------------------------------------------------------|" crlf)
)

(deffunction sort_puntuacion (?c1 ?c2)
	(< (send ?c1 get-PuntuacionCiudad) (send ?c2 get-PuntuacionCiudad))
)
(deffunction sort_actividad (?a1 ?a2)
	(< (send ?a1 get-PuntuacionActividad) (send ?a2 get-PuntuacionActividad))
)

(deffunction sort_precio_por_noche (?a1 ?a2)
	(< (send ?a1 get-PrecioPorNoche) (send ?a2 get-PrecioPorNoche))
)



; https://github.com/jmigual/FIB-IA/blob/develop/Coneixement/CouchPotato.clp
; https://github.com/JosepRivaille/IA-FIB-Knowledge-Based-Systems
; https://github.com/JosepRivaille/IA-FIB-Knowledge-Based-Systems/blob/master/rico_rico_rules.clp
; https://github.com/JosepRivaille/IA-FIB-Knowledge-Based-Systems/blob/master/rico_rico_functions.clp
