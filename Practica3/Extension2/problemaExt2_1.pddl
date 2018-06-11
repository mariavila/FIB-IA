(define (problem ten-cities)
	(:domain agencia_viajes)
	(:objects
		c1 c2 c3 c4 c5 c6 - ciudad
		h1 h2 h3 h4 h5 h6 h7 h8 - hotel
	)
	(:init
		(conectada c1 c3)
		(conectada c1 c4)
		(conectada c1 c5)
		(conectada c1 c6)
		(conectada c2 c1)
		(conectada c2 c4)
		(conectada c2 c5)
		(conectada c2 c6)
		(conectada c3 c2)
		(conectada c3 c5)
		(conectada c4 c5)
		(conectada c4 c6)
		(conectada c5 c6)
		(hotel_ciudad c1 h1)
		(hotel_ciudad c1 h2)
		(hotel_ciudad c1 h3)
		(hotel_ciudad c2 h4)
		(hotel_ciudad c3 h5)
		(hotel_ciudad c4 h6)
		(hotel_ciudad c5 h7)
		(hotel_ciudad c6 h8)

		(= (numero_ciudades_visitadas) 0)
		(= (numero_minimo_dias_por_ciudad) 1)
		(= (numero_maximo_dias_por_ciudad) 3)

		(= (numero_interes c1) 2)
		(= (numero_interes c2) 1)
		(= (numero_interes c3) 2)
		(= (numero_interes c4) 1)
		(= (numero_interes c5) 3)
		(= (numero_interes c6) 2)
		(= (numero_interes-total) 0)

	)
	(:goal
		(and
		(= (numero_ciudades_visitadas) 4)
		(>= (numero_dias_viaje) 5)
		(>= (numero_dias_ciudad) (numero_minimo_dias_por_ciudad))
		)
	)
	(:metric minimize (numero_interes-total))
)

