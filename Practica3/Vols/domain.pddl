(define (domain agencia_viajes)
	(:requirements :strips :typing :adl :fluents)
	(:types
		ciudad - location
		hotel - place
	)
	
	(:functions
		(numero_ciudades_visitadas)
	)
	(:predicates 
		(hotel_ciudad ?c - ciudad ?h - hotel)
		(conectada ?c1 - ciudad ?c2 - ciudad)
		;;(numero_ciudades_visitadas ?nv)
		(hotel_asignado ?ha - hotel ?c - ciudad)
		(ciudad_actual ?c - ciudad)
		(ciudad_visitada ?c - ciudad)
		
	)

	(:action ASIGNA_CIUDAD_INICIAL
		:parameters(
			?c_sig -ciudad
		)
		:precondition(
			= (numero_ciudades_visitadas) 0		
		)
		:effect(
			and (increase (numero_ciudades_visitadas) 1) (ciudad_actual ?c_sig) (ciudad_visitada ?c_sig)		
		)
	)
	(:action VIAJA
		:parameters(
			?c_act - ciudad
			?c_siguiente - ciudad
			?h_asignado - hotel		
		)
		:precondition(
			and (ciudad_actual ?c_act) (or(conectada ?c_act ?c_siguiente) (conectada ?c_siguiente ?c_act)) (not(ciudad_visitada ?c_siguiente))
				(hotel_asignado ?h_asignado ?c_act ) 				
		) 
		:effect(
			and (not(ciudad_actual ?c_act)) (ciudad_actual ?c_siguiente) (increase (numero_ciudades_visitadas) 1) (ciudad_visitada ?c_siguiente)
		)
	)

	(:action ASIGNA_HOTEL
		:parameters(
			?c_act - ciudad
			?h_asignado - hotel
		)
		:precondition(
			and (not(hotel_asignado ?h_asignado ?c_act)) 
				(hotel_ciudad ?c_act ?h_asignado)
		)
		:effect(
			and (hotel_asignado ?h_asignado ?c_act)
		)
	)
)

;; FALTA FER QUE A LA ULTIMA CIUTAT SE LI ASSIGNI HOTEL!!!!!!!!!!!!!! FER UNA VARIABLE AUX QUE SIGUI FI???
;;UN COP FET FER MILLORA 1
