(define (problem ten-cities)
	(:domain agencia_viajes)
	(:objects
		c1 c2 c3 c4 c5 c6 - ciudad
		h1 h2 h3 h4 h5 h6 h7 h8 - hotel
	)
	(:init
		(conectada c1 c3)
		(conectada c1 c5)
		(conectada c1 c6)
		(conectada c2 c6)
		(conectada c3 c4)
		(conectada c3 c5)
		(conectada c4 c1)
		(conectada c6 c3)
		(conectada c6 c4)
		(conectada c6 c5)
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

		(= (numero_interes c1) 1)
		(= (numero_interes c2) 3)
		(= (numero_interes c3) 3)
		(= (numero_interes c4) 1)
		(= (numero_interes c5) 3)
		(= (numero_interes c6) 2)
		(= (numero_interes-total) 0)

		(= (precio-hotel h1) 144)
		(= (precio-hotel h2) 108)
		(= (precio-hotel h3) 195)
		(= (precio-hotel h4) 154)
		(= (precio-hotel h5) 186)
		(= (precio-hotel h6) 369)
		(= (precio-hotel h7) 109)
		(= (precio-hotel h8) 206)
		(= (precio-hotel-total) 0)
		(= (numero_minimo_precio_hoteles) 2000)
		(= (numero_maximo_precio_hoteles) 2500)

		(= (precio-viaje c1 c3) 291)
		(= (precio-viaje c1 c5) 254)
		(= (precio-viaje c1 c6) 114)
		(= (precio-viaje c2 c6) 86)
		(= (precio-viaje c3 c4) 53)
		(= (precio-viaje c3 c5) 196)
		(= (precio-viaje c4 c1) 319)
		(= (precio-viaje c6 c3) 362)
		(= (precio-viaje c6 c4) 146)
		(= (precio-viaje c6 c5) 274)
		(= (precio-viaje-total) 0)
	)
	(:goal
		(and
		(= (numero_ciudades_visitadas) 4)
		(hotel_asignado)
		(>= (numero_dias_viaje) 5)
		(>= (numero_dias_ciudad) (numero_minimo_dias_por_ciudad))
		(>= (+ (precio-hotel-total) (precio-viaje-total)) (numero_minimo_precio_hoteles))
		(<= (+ (precio-hotel-total) (precio-viaje-total)) (numero_maximo_precio_hoteles))
		)
	)
	(:metric minimize (+ (* 100 (numero_interes-total)) (+ (* 1 (precio-hoteles-total)) (* 1 (precio-viaje-total))) ))
)

