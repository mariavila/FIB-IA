(define (problem ten-cities)
	(:domain agencia_viajes)
	(:objects
		c1 c2 c3 c4 c5 - ciudad
		h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 - hotel
	)
	(:init
		(conectada c1 c2)
		(conectada c1 c3)
		(conectada c3 c4)
		(conectada c3 c5)
		(conectada c5 c2)
		(conectada c5 c4)
		(hotel_ciudad c1 h1)
		(hotel_ciudad c1 h2)
		(hotel_ciudad c2 h3)
		(hotel_ciudad c2 h4)
		(hotel_ciudad c3 h5)
		(hotel_ciudad c3 h6)
		(hotel_ciudad c4 h7)
		(hotel_ciudad c4 h8)
		(hotel_ciudad c5 h9)
		(hotel_ciudad c5 h10)

		(hotel_asignado)
		(= (numero_ciudades_visitadas) 0)
		(= (numero_minimo_dias_por_ciudad) 2)
		(= (numero_maximo_dias_por_ciudad) 4)

        (= (numero_interes c1) 3)
        (= (numero_interes c2) 3)
        (= (numero_interes c3) 20)
        (= (numero_interes c4) 1)
        (= (numero_interes c5) 1)
        (= (numero_interes-total) 0)

        (= (precio-hotel h1) 200)
        (= (precio-hotel h2) 100)
        (= (precio-hotel h3) 200)
        (= (precio-hotel h4) 100)
        (= (precio-hotel h5) 200)
        (= (precio-hotel h6) 100)
        (= (precio-hotel h7) 200)
        (= (precio-hotel h8) 100)
        (= (precio-hotel h9) 200)
        (= (precio-hotel h10) 100)
        (= (precio-hotel-total) 0)
        (= (numero_minimo_precio_hoteles) 1400)
	(= (numero_maximo_precio_hoteles) 1600)

        (= (precio-viaje c1 c2) 100)
        (= (precio-viaje c1 c2) 200)
        (= (precio-viaje c1 c3) 50)
        (= (precio-viaje c1 c3) 150)
        (= (precio-viaje c3 c4) 100)
        (= (precio-viaje c3 c5) 300)
        (= (precio-viaje c5 c2) 50)
        (= (precio-viaje c5 c4) 100)
        (= (precio-viaje-total) 0)
	)
  	(:goal
		(and
        (= (numero_ciudades_visitadas) 4)
        (hotel_asignado)
        (>= (numero_dias_viaje) 10)
        (>= (numero_dias_ciudad) (numero_minimo_dias_por_ciudad))
        (>= (+ (precio-hotel-total) (precio-viaje-total)) (numero_minimo_precio_hoteles))
        (<= (+ (precio-hotel-total) (precio-viaje-total)) (numero_maximo_precio_hoteles))
        ;;(< (numero_interes-total) 27)
        )
	)

    (:metric minimize (+ (* 100 (numero_interes-total)) (+ (* 1 (precio-hoteles-total)) (* 1.5 (precio-viaje-total))) ))
)