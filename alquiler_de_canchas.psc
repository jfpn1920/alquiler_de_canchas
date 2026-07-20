Algoritmo alquiler_de_canchas
	Definir opcion, totalAlquileres Como Entero
	Definir i, j Como Entero
	Definir idBuscar Como Entero
	Definir siguienteID Como Entero
	Definir encontrado Como Logico
	Definir id Como Entero
	Definir cliente Como Caracter
	Definir cancha Como Caracter
	Definir fecha Como Caracter
	Definir hora Como Caracter
	Definir duracion Como Caracter
	Definir costo Como Real
	Definir estado Como Caracter
	Dimension id[100]
	Dimension cliente[100]
	Dimension cancha[100]
	Dimension fecha[100]
	Dimension hora[100]
	Dimension duracion[100]
	Dimension costo[100]
	Dimension estado[100]
	totalAlquileres <- 0
	siguienteID <- 1
	//-------------------------------------//
	//--|menu_principal_alquiler_canchas|--//
	//-------------------------------------//
	Repetir
		Escribir "menu principal alquiler de canchas"
		Escribir "1) registrar alquiler"
		Escribir "2) editar alquiler"
		Escribir "3) eliminar alquiler"
		Escribir "4) buscar alquiler"
		Escribir "5) listar alquileres"
		Escribir "6) ver detalles del alquiler"
		Escribir "7) salir"
		Escribir "seleccione una opción:"
		Leer opcion
		Segun opcion Hacer
			//------------------------//
			//--|registrar_alquiler|--//
			//------------------------//
			1:
				Escribir "registrar alquiler"
				id[totalAlquileres + 1] <- siguienteID
				siguienteID <- siguienteID + 1
				Escribir "id asignado: ", id[totalAlquileres + 1]
				Escribir "ingrese el nombre del cliente:"
				Leer cliente[totalAlquileres + 1]
				Escribir "ingrese el nombre de la cancha:"
				Leer cancha[totalAlquileres + 1]
				Escribir "ingrese la fecha:"
				Leer fecha[totalAlquileres + 1]
				Escribir "ingrese la hora:"
				Leer hora[totalAlquileres + 1]
				Escribir "ingrese la duración:"
				Leer duracion[totalAlquileres + 1]
				Escribir "ingrese el costo:"
				Leer costo[totalAlquileres + 1]
				Escribir "ingrese el estado:"
				Leer estado[totalAlquileres + 1]
				totalAlquileres <- totalAlquileres + 1
				Escribir "alquiler registrado correctamente."
			//---------------------//
			//--|editar_alquiler|--//
			//---------------------//
			2:
				Escribir "editar alquiler"
				Si totalAlquileres = 0 Entonces
					Escribir "no hay alquileres registrados."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalAlquileres Hacer
						Escribir id[i], " | ", cliente[i], " | ", cancha[i], " | ", fecha[i], " | ", hora[i], " | ", duracion[i], " | ", costo[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del alquiler:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalAlquileres Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese el nuevo cliente:"
							Leer cliente[i]
							Escribir "ingrese la nueva cancha:"
							Leer cancha[i]
							Escribir "ingrese la nueva fecha:"
							Leer fecha[i]
							Escribir "ingrese la nueva hora:"
							Leer hora[i]
							Escribir "ingrese la nueva duración:"
							Leer duracion[i]
							Escribir "ingrese el nuevo costo:"
							Leer costo[i]
							Escribir "ingrese el nuevo estado:"
							Leer estado[i]
							Escribir "alquiler editado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un alquiler con ese id."
					FinSi
				FinSi
			//-----------------------//
			//--|eliminar_alquiler|--//
			//-----------------------//
			3:
				Escribir "eliminar alquiler"
				Si totalAlquileres = 0 Entonces
					Escribir "no hay alquileres registrados."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalAlquileres Hacer
						Escribir id[i], " | ", cliente[i], " | ", cancha[i], " | ", fecha[i], " | ", hora[i], " | ", duracion[i], " | ", costo[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del alquiler:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalAlquileres Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalAlquileres Entonces
								Para j <- i Hasta totalAlquileres - 1 Hacer
									id[j] <- id[j+1]
									cliente[j] <- cliente[j+1]
									cancha[j] <- cancha[j+1]
									fecha[j] <- fecha[j+1]
									hora[j] <- hora[j+1]
									duracion[j] <- duracion[j+1]
									costo[j] <- costo[j+1]
									estado[j] <- estado[j+1]
								FinPara
								
							FinSi
							totalAlquileres <- totalAlquileres - 1
							Escribir "alquiler eliminado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un alquiler con ese id."
					FinSi
				FinSi
			//---------------------//
			//--|buscar_alquiler|--//
			//---------------------//
			4:
				Escribir "buscar alquiler"
				Si totalAlquileres = 0 Entonces
					Escribir "no hay alquileres registrados."
				SiNo
					Escribir "ingrese el id del alquiler:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalAlquileres Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos encontrados"
							Escribir id[i], " | ", cliente[i], " | ", cancha[i], " | ", fecha[i], " | ", hora[i], " | ", duracion[i], " | ", costo[i], " | ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un alquiler con ese id."
					FinSi
				FinSi
			//-----------------------//
			//--|listar_alquileres|--//
			//-----------------------//
			5:
				Escribir "listar alquileres"
				Si totalAlquileres = 0 Entonces
					Escribir "no hay alquileres registrados."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalAlquileres Hacer
						Escribir id[i], " | ", cliente[i], " | ", cancha[i], " | ", fecha[i], " | ", hora[i], " | ", duracion[i], " | ", costo[i], " | ", estado[i]
					FinPara
				FinSi
			//-------------------------------//
			//--|ver_detalles_del_alquiler|--//
			//-------------------------------//
			6:
				Escribir "ver detalles del alquiler"
				Si totalAlquileres = 0 Entonces
					Escribir "no hay alquileres registrados."
				SiNo
					Escribir "ingrese el id del alquiler:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalAlquileres Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles del alquiler"
							Escribir "id: ", id[i]
							Escribir "cliente: ", cliente[i]
							Escribir "cancha: ", cancha[i]
							Escribir "fecha: ", fecha[i]
							Escribir "hora: ", hora[i]
							Escribir "duración: ", duracion[i]
							Escribir "costo: ", costo[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un alquiler con ese id."
					FinSi
				FinSi
			//--------------------------//
			//--|salir_menu_principal|--//
			//--------------------------//
			7:
				Escribir "gracias por utilizar el sistema de alquiler de canchas."
			De Otro Modo:
				Escribir "opción no válida."
		FinSegun
	Hasta Que opcion = 7
FinAlgoritmo