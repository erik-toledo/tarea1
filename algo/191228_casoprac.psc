Algoritmo sin_titulo
	cont = 0
	preci1 <- 1879
	preci2 <- 2435
	preci3 <- 6190
	preci4 <- 9490
	Repetir
		Repetir
			Escribir " " 
			Escribir 'Elija el aritculo de su agrado'
			Escribir '1.- Combo estudio (Escritorio para computo + Silla secretarial)$1,879.00'
			Escribir ' '
			Escribir '2.- Combo dibujo (Mesa de dibujo + Banco metalico) $2,435.00 '
			Escribir '(10% al pagar con tarjeta de credito o debito)'
			Escribir ' '
			Escribir '3.- Laptop HP 14¨, Procesador Intel celeron, DD 500 GB, RAM 4GB $6,190.00'
			Escribir '(De regalo una Backpack (mochila) o (audifonos inalambricos)'
			Escribir ' '
			Escribir '4.- Laptop HP 14¨, Procesador Core i3, DD 500 GB, RAM 8GB $9,490.00'
			Escribir '(De regalo licencia antivirus de 1 año)'
			Leer art
		Hasta Que art >0 y art <5 
		Segun art Hacer
			1:
				productos = productos + " 1 Combo estudio (Escritorio para computo + Silla secretarial)" + " "
				totpaga = totpaga + preci1
			2:
				productos = productos + " 1 Combo dibujo (Mesa de dibujo + Banco metalico)" + " + " + " "
				Escribir "Elija su metodo de pago: 1.- Tarjeta o 2.- Efectivo"
				Leer met
				Si met = "1" Entonces
					totpaga = totpaga + (preci2 - ( preci2 * 0.10))
				SiNo
					Si met="2" Entonces
						totpaga = totpaga + preci2
					FinSi
				FinSi
			3:
				productos = productos + " 1 Laptop HP 14¨, Procesador Intel celeron, DD 500 GB, RAM 4GB " + " + " + " "
				totpaga = totpaga + preci3
				Escribir " Elige tu regalo: 1 Mochila o  2 Audifonos "
				Leer reg 
				Si reg = 1 Entonces
					rega = rega + " 1 Mochila " + " " 
				SiNo
					Si reg = 2 Entonces
						rega = rega + " 1 par de Audifonos " + " "
					SiNo 
						Escribir "Error, opcion no valida "
					FinSi
				FinSi
			4:
				productos = productos + " Laptop HP 14¨, Procesador Core i3, DD 500 GB, RAM 8GB " + " + " + " " 
				totpaga = totpaga + preci4
				rega = rega + " 1 Licencia antivirus de 1 año " + " " 
		Fin Segun
		Escribir ' Tenga en cuenta que solo se pueden comprar 2 articulos como maximo '
		Escribir ' ¿Desea comprar otro combo ?, Si o No '
		Leer opc
		cont = cont + 1
	Hasta Que opc = "no" O opc = "NO" O opc = "No" o cont = 2
	Escribir " " 
	Escribir " Tus articulos son: "
	Escribir " " 
	Escribir ,productos 
	Escribir " Regalos: "
	Escribir " " 
	Escribir ,rega
	Escribir " " 
	Escribir " Total a pagar: $", totpaga
FinAlgoritmo
