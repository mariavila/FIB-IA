(define (domain agencia_viajes)
	(:requirements :strips :typing :adl :fluents)
	(:types
		ciudad - location
		hotel - place
	)

	(:functions
		(numero_ciudades_visitadas)
		(numero_dias_viaje)
		(numero_dias_ciudad)
		(numero_minimo_dias_por_ciudad)
		(numero_maximo_dias_por_ciudad)
	)
	(:predicates
		(hotel_ciudad ?c - ciudad ?h - hotel)
		(conectada ?c1 - ciudad ?c2 - ciudad)
		;;(numero_ciudades_visitadas ?nv)
		(hotel_asignado)
		(ciudad_actual ?c - ciudad)
		(ciudad_visitada ?c - ciudad)

	)

	(:action ASIGNA_CIUDAD_INICIAL
		:parameters(
			?c_sig -ciudad
		)
		:precondition(
			and (= (numero_ciudades_visitadas) 0)
		)
		:effect(
			and (increase (numero_ciudades_visitadas) 1) (ciudad_actual ?c_sig) (ciudad_visitada ?c_sig) (assign (numero_dias_viaje) 0) (assign (numero_dias_ciudad) 0)
		)
	)

	(:action VIAJA
		:parameters(
			?c_act - ciudad
			?c_siguiente - ciudad
		)
		:precondition(
			and (ciudad_actual ?c_act) (or(conectada ?c_act ?c_siguiente) (conectada ?c_siguiente ?c_act)) (not(ciudad_visitada ?c_siguiente))
				(hotel_asignado)
				(>= (numero_dias_ciudad) (numero_minimo_dias_por_ciudad))
		)
		:effect(
			and (not(ciudad_actual ?c_act)) (ciudad_actual ?c_siguiente) (increase (numero_ciudades_visitadas) 1) (ciudad_visitada ?c_siguiente) (not(hotel_asignado)) (assign (numero_dias_ciudad) 0)
		)
	)

	(:action ASIGNA_HOTEL
		:parameters(
			?c_act - ciudad
			?h_asignado - hotel
		)
		:precondition(
			and (ciudad_actual ?c_act) (hotel_ciudad ?c_act ?h_asignado) (not(hotel_asignado))
		)
		:effect(
			hotel_asignado
		)
	)
	(:action PASAR_DIA_EN_CIUDAD
		:parameters()
		:precondition(
			and (< (numero_dias_ciudad) (numero_maximo_dias_por_ciudad)) (hotel_asignado)
		)
		:effect(
			and (increase (numero_dias_ciudad) 1) (increase (numero_dias_viaje) 1)
		)
	)
)
