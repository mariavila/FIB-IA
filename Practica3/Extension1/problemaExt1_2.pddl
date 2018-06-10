(define (problem ten-cities)
	(:domain agencia_viajes)
	(:objects
		c1 c2 c3 c4 c5 - ciudad
		h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 - hotel
	)
	(:init
		(conectada c1 c2)
		(conectada c2 c3)
		(conectada c3 c4)
		(conectada c3 c5)
		(conectada c4 c1)
		(conectada c5 c1)
		(hotel_ciudad c1 h1)
		(hotel_ciudad c1 h2)
		(hotel_ciudad c1 h3)
		(hotel_ciudad c1 h4)
		(hotel_ciudad c1 h5)
		(hotel_ciudad c1 h6)
		(hotel_ciudad c2 h7)
		(hotel_ciudad c3 h8)
		(hotel_ciudad c4 h9)
		(hotel_ciudad c5 h10)

		(= (numero_ciudades_visitadas) 0)
		(= (numero_minimo_dias_por_ciudad) 2)
		(= (numero_maximo_dias_por_ciudad) 4)
	)
	(:goal
	  (and (= (numero_ciudades_visitadas) 4) (hotel_asignado) (>= (numero_dias_viaje) 12) (>= (numero_dias_ciudad) (numero_minimo_dias_por_ciudad)))
  )
 )
