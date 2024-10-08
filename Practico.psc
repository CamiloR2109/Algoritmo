//1.Mayor de cinco numeros: Solicita tres numeros y determina cual es el mayor de ellos.
Funcion numeros_mayores
	Definir numero_1, numero_2, numero_3 Como Real;
	numero_1 = 0; numero_2 = 0; numero_3 = 0;
	Escribir "Ingrese el primer numero:";
	Leer numero_1;
	Escribir "Ingrese el segundo numero:";
	Leer numero_2;
	Escribir "Ingrese el tercer numero:";
	Leer numero_3;
	
	si numero_1 > numero_2  Y numero_1 > numero_3 Entonces
		Escribir numero_1, " es mayor";
	SiNo
		si numero_2 > numero_1 Y numero_2 > numero_3 Entonces
			Escribir numero_2, " es mayor";
		SiNo
			si numero_3 > numero_1 Y numero_3 > numero_2 Entonces
				Escribir numero_3, " es mayor";
			FinSi
		FinSi
	FinSi
FinFuncion


Funcion Procesos_selectivos
	Definir  opc Como Caracter;
	opc = "";
	Escribir "Menu de opciones";
	Escribir "1.Numero mayor";
	Escribir "2.Edad minima para votar";
	Escribir "3.Multiplo de dos numeros";
	Escribir "4.Numero positivo, negativo, o cero";
	Escribir "5.A�o bisiesto";
	Escribir "6.Signo Zodiacal";
	Escribir "7.Dia de las quincenas";
	Escribir "8.Dia de la semana";
	Escribir "9. Salir";
	Escribir 				"opc[1-9]";
	Leer opc;
	
	si opc = "1" Entonces
		numeros_mayores
	SiNo
		si opc = "2" Entonces
			Mayor_edad
		SiNo
			si opc = "3" Entonces
				Numeros_multiplos
			SiNo
				si opc = "4" Entonces
					numero_positivo_negativo_cero
				SiNo
					si opc = "5" Entonces
						a�o_bisiesto
					SiNo
						si opc = "6" Entonces
							Signo_zodiacal
						SiNo
							si opc = "7" Entonces
								Dia_de_la_quincena
							SiNo
								si opc = "8" Entonces
									Dia_de_la_semana
								SiNo
									si opc = "9" Entonces
										Escribir "Gracias por su visita";
									SiNo
										Escribir "Opci�n incorrecta";
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
FinFuncion

//2.Edad m�nima para votar: Pregunta la edad del usuario y verifica si es elegible para votar (18 a�os o m�s).
Funcion Mayor_edad
	Definir edad Como Entero;
	edad = 0;
	Escribir "Ingrese su edad para verificar si es mayor de edad";
	Leer edad;
	
	si edad >= 18 Entonces
		Escribir "Eres mayor de edad, por lo tanto puedes votar";
	SiNo
		Escribir "Eres menor de edad, por lo tanto no puedes votar";
	FinSi
FinFuncion

//3.Dado dos numeros verificar si el primero es multiplo del segundo.
Funcion Numeros_multiplos
	Definir numero1, numero2 Como Entero;
	numero1 = 0; numero2 = 0;
	Escribir "Ingrese el primer numero";
	Leer numero1;
	Escribir "Ingrese el segundo numero";
	Leer numero2;
	
	si numero1 mod numero2 = 0 Entonces
		Escribir numero1, " es multiplo de ", numero2;
	SiNo
		Escribir numero1, " no es multiplo de ", numero2;
	FinSi
FinFuncion

//4. Numero positivo negativo o cero: pide al usuario que ingrese un numero y muestra si es positivo, negativa o cero.
Funcion numero_positivo_negativo_cero
	Definir numpnc Como Real;
	numpnc = 0;
	Escribir "Ingrese un numero:";
	Leer numpnc;
	
	si numpnc > 0 Entonces
		Escribir "Es positivo";
	SiNo
		si numpnc = 0 Entonces
			Escribir "Es 0 ";
		sino
			Escribir "Es negativo "
		FinSi
	FinSi
FinFuncion

//5.A�o bisiesto: Solicita al usuario un a�o y determina si es un a�o bisiesto o no. Un a�o bisiesto es divisible para 4, pero no por 100, a menos que tambien sea divisible para 400.
Funcion a�o_bisiesto
	Definir a�o Como Entero
	Escribir "Ingrese un a�o:"
	Leer a�o
	
	Si a�o mod 4 = 0 Entonces
		Si a�o mod 100 = 0 Entonces
			Si a�o mod 400 = 0 Entonces
				Escribir "El a�o ", a�o, " es bisiesto."
			Sino
				Escribir "El a�o ", a�o, " no es bisiesto."
			FinSi
		Sino
			Escribir "El a�o ", a�o, " es bisiesto."
		FinSi
	Sino
		Escribir "El a�o ", a�o, " no es bisiesto."
    FinSi
FinFuncion

//6.Pide al usuario que ingrese su mes y dia de nacimiento, luego determina su signo zodiacal. Puedes usar una serie de declaraciones para comparar las fechas ingresadas con las fechas limites de cada signo zodiacal.
Funcion Signo_zodiacal
	Definir dia Como Entero;
	Definir mes Como Entero;
	
	Escribir "Ingrese el dia:";
	Leer dia;
	Escribir "Ingrese el mes:";
	Leer mes;
	
	Si mes = 1 Entonces
		si dia >= 20 Entonces
			Escribir "Eres Acuario";
		SiNo
			si dia <= 19 Entonces
				Escribir "Eres Capricornio";
			FinSi
		FinSi
	SiNo
		si mes = 2 Entonces
			si dia >= 19 Entonces
				Escribir "Eres Piscis";
			SiNo
				si  dia <= 18 Entonces
					Escribir "Eres Acuario";
				FinSi
			FinSi
		SiNo
			Si mes = 3 Entonces
				si dia >= 21 Entonces
					Escribir "Eres Aries";
				SiNo
					si dia <= 20 Entonces
						Escribir "Eres Piscis";
					FinSi
				FinSi
			SiNo
				si mes = 4 Entonces
					si dia >= 20 Entonces
						Escribir "Eres Tauro";
					SiNo
						si dia <= 19 Entonces
							Escribir "Eres Aries";
						FinSi
					FinSi
				SiNo
					Si mes = 5 Entonces
						si dia >= 21 Entonces
							Escribir "Eres G�minis";
						SiNo
							si dia <= 20 Entonces
								Escribir "Eres Tauro";
							FinSi
						FinSi
					SiNo
						Si mes = 6 Entonces
							si dia >= 21 Entonces
								Escribir "Eres C�ncer";
							SiNo
								si dia <= 20 Entonces
									Escribir "Eres G�minis";
								FinSi
							FinSi
						SiNo
							Si mes = 7 Entonces
								si dia >= 23 Entonces
									Escribir "Eres Leo";
								SiNo
									si dia <= 22  Entonces
										Escribir "Eres C�ncer";
									FinSi
								FinSi
							SiNo
								Si mes = 8 Entonces
									si dia >= 23 Entonces
										Escribir "Eres Virgo";
									SiNo
										si dia <= 23 Entonces
											Escribir "Eres Leo";
										FinSi
 									FinSi
								SiNo
									Si mes = 9 Entonces
										si dia >= 23 Entonces
											Escribir "Eres Libra";
										SiNo
											si dia <= 22 Entonces
												Escribir "Eres Virgo";
											FinSi
										FinSi
									SiNo
										si mes = 10 Entonces
											si dia >= 23 Entonces
												Escribir "Eres Escorpio";
											SiNo
												si dia <= 22 Entonces
													Escribir "Eres Libra";
												FinSi
											FinSi
										SiNo
											Si mes = 11 Entonces
												si dia >= 22 Entonces
													Escribir "Eres Sagitario";
												SiNo
													si dia <= 21 Entonces
														Escribir "Eres Escorpio";
													FinSi
												FinSi
											SiNo
												si mes = 12 entonces
													si dia >= 22  Entonces
														Escribir "Eres Capricornio";
													sino
														si dia <= 21 Entonces
															Escribir "Eres Sagitario";
														FinSi
													FinSi
												SiNo
													Escribir "Dia o mes no V�lido";
												FinSi
											Fin Si
										FinSi
									Fin Si
								FinSi
							Fin Si
						FinSi
					Fin Si
				FinSi
			Fin Si
		FinSi
	Fin Si
FinFuncion

//7.Solicita al usuario un numero de dia del mes (1-31) y verifica si ese dia pertenece a la primera quincena del dia(1-15) o a la segunda quincena (16-31).
Funcion Dia_de_la_quincena
	Definir dia Como Entero;
	
	Escribir "Ingrese el dia (1-31):";
	Leer dia;
	
	si dia >= 1 y dia <= 15 Entonces
		Escribir "Este dia pertenece a la primera quincena";
	SiNo
		si dia >= 16 y dia <= 31 Entonces
			Escribir "Este dia pertenece a la segunda quincena";
		SiNo
			si dia >= 32  o dia <= 0 Entonces
				Escribir "Dia no valido";
			FinSi
		FinSi
	FinSi
FinFuncion

//8.Dia de la semana: Pide al usuario que ingrese un numero del 1 al 7, donde 1 representa el domingo, 2 el lunes, 3 el martes y asi sucesivamente.Mostrar el nombre de el dia de la swemana correspondiente al numero ingresado.
Funcion Dia_de_la_semana
	Definir dia Como Entero;
	
	Escribir "Ingrese el dia (1 al 7):";
	Leer dia;
	
	si dia = 1 Entonces
		Escribir "Es domingo";
	SiNo
		si dia = 2 Entonces
			Escribir "Es lunes";
		SiNo
			si dia = 3 Entonces
				Escribir "Es Martes";
			SiNo
				si dia = 4 Entonces
					Escribir "Es Miercoles";
				SiNo
					si dia = 5 Entonces
						Escribir "Es Jueves";
					SiNo
						si dia = 6 Entonces
							Escribir "Es Viernes";
							si dia = 7 Entonces
								Escribir "Es S�bado";
							SiNo
								Escribir "Dia no encontrado";
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
FinFuncion

Funcion  CalculadoraDescuento
	Definir valororiginal, descuento, valorcondescuento, iva, preciofinal Como Real
	Escribir "Ingrese el precio original del articulo"
	Leer valororiginal
	Escribir "Ingrese el porcentaje de descuento (sin el simbolo %): "
	Leer descuento
	descuento <- descuento / 100
	valorcondescuento <- valororiginal * (1 - descuento)
	preciofinal <- valorcondescuento + iva
	Escribir " El precio final del articulo es: " , preciofinal
	
FinFuncion

Funcion  CalculadoraAumentoSalarial10
	Definir salarioActual, porcentajeAumento, aumento, nuevoSalario Como Real
	Escribir "Ingrese su salario actual: "
	Leer salarioActual
	Escribir "Ingrese el porcentaje de aumento (sin el simbolo %): "
	Leer porcentajeAumento
	porcentajeAumento <- porcentajeAumento / 100
	aumento <- salarioActual * porcentajeAumento
	nuevosalario <- salarioActual + aumento
	Escribir "Su nuevo salario despu�s del aumento es: ", nuevoSalario
	
FinFuncion

Funcion CalculadoraImpuestos12
	Definir salarioAnual, impuesto, tramol, tramo2, tramo3 Como Real
	Escribir "Ingrese su salario anual: "
	Leer salarioAnual
	Si salarioAnual <= 10000 Entonces 
		impuesto <- salarioAnual * 0.05
	SiNo
		Si salarioAnual <= 20000 Entonces
			tramo1 <- 10000 * 0.05
			tramo2 <- (salarioAnual - 10000) * 0.1
			impuesto <- tramo1 * tramo2
		SiNo
			tramo1 <- 10000 * 0.05
			tramo2 <- 10000 * 0.1
			tramo3 <- (salarioAnual - 20000) * 0.15
			impuesto <-tramol + tramo2 + tramo3
		FinSi
	Finsi
	Escribir "El impuesto a pagar es: $", impuesto
FinFuncion

Funcion CalculoBonoAntiguedad
    Definir a�os_trabajados, salario, bono Como Real
    
    Escribir "Ingrese la cantidad de a�os trabajados: "
    Leer a�os_trabajados
    
    Escribir "Ingrese su salario: "
    Leer salario
    
    Si a�os_trabajados > 5 Entonces
        bono = salario * 0.05
    Sino
        bono = 0
    FinSi
    
    Escribir "El bono de antig�edad es: $", ConvertirATexto(bono)
FinFuncion

Funcion CalcularDistancia14
	
	Definir  distancia, costo Como Real
	Escribir "ingrese la distancia de envio en Km = "
	Leer distancia
	Si distancia <= 50 Entonces
		costo=10
	FinSi
	Si distancia >= 50 Entonces
		costo=20
	FinSi
	Escribir "El costo de env�o es: $" , ConvertirATexto(costo)
FinFuncion

Funcion DescuentoComprasAnuales15
    Definir totalComprasAnual, descuento, subtotal, iva, totalPagar Como Real
    Escribir "Ingresa el total de tus compras mensuales durante un a�o: $"
    Leer totalComprasAnual
    Si totalComprasAnual > 500 Entonces
        descuento <- totalComprasAnual * 0.2  // 20% de descuento
        subtotal <- totalComprasAnual - descuento
    SiNo
        subtotal <- totalComprasAnual
    FinSi
    iva <- subtotal * 0.15  // 15% de IVA
    totalPagar <- subtotal + iva
    Escribir "Subtotal: $", subtotal
    Escribir "IVA: $", iva
    Escribir "Total a pagar: $", totalPagar
	
FinFuncion

Funcion DescuentoPorVolumen16
	Definir cantidad, precioUnitario, subtotal, descuento, subtotalConDescuento, impuesto, total Como Real
	Escribir "Ingrese el precioUnitario: "
	Leer cantidad 
	Escribir "Ingrese el precio unitario: "
	Leer precioUnitario
	subtotal <- cantidad * precioUnitario
	Si cantidad >= 20 Y cantidad <= 40 Entonces
		descuento <- 0.15
	SiNo
		Si cantidad > 90 Entonces
			descuento <- 0.25
		SiNo
			descuento <- 0 
		FinSi
	FinSi
	subtotalConDescuento <- subtotal * (1 - descuento)
	impuesto <- subtotalcondescuento * 0.15
	total <- subtotalcondescuento + impuesto
	Escribir " El total a pagar es: " ,  total
	
FinFuncion

Funcion CalcularCosto
    Definir Unidades Como Entero
    Definir PrecioUnitario, Descuento, CostoSinDescuento, MontoDescuento, CostoConDescuento, Impuestos, CostoTotal Como Real
	
    // Leer las unidades y el precio unitario
    Escribir "Ingrese la cantidad de unidades: "
    Leer Unidades
    Escribir "Ingrese el precio unitario del producto: "
    Leer PrecioUnitario
	
    // Inicializar el descuento a 0
    Descuento = 0
	
    // Calcular el descuento seg�n el n�mero de unidades
    Si Unidades >= 20 Y Unidades <= 40 Entonces
        Descuento = 0.15
    Sino
        Si Unidades >= 41 Y Unidades <= 90 Entonces
            Descuento = 0.20
        Sino
            Si Unidades > 90 Entonces
                Descuento = 0.25
            FinSi
        FinSi
    FinSi
	
    // Calcular el costo sin descuento
    CostoSinDescuento = Unidades * PrecioUnitario
	
    // Calcular el monto del descuento
    MontoDescuento = CostoSinDescuento * Descuento
	
    // Calcular el costo despu�s del descuento
    CostoConDescuento = CostoSinDescuento - MontoDescuento
	
    // Calcular los impuestos del 15%
    Impuestos = CostoConDescuento * 0.15
	
    // Calcular el costo total con impuestos
    CostoTotal = CostoConDescuento + Impuestos
	
    // Mostrar el detalle del c�lculo
    Escribir "El costo sin descuento es ", CostoSinDescuento
    Escribir "El descuento aplicado es ", MontoDescuento
    Escribir "El costo con descuento es ", CostoConDescuento
    Escribir "Los impuestos aplicados (15%) son ", Impuestos
    Escribir "El costo total con descuento e impuestos es ", CostoTotal
FinFuncion

Funcion CostoServicio
    Definir Horas, CostoPorHora, Descuento, CostoTotal Como Real
	
    // Leer las horas de servicio y el costo por hora
    Escribir "Ingrese la cantidad de horas de servicio "
    Leer Horas
    Escribir "Ingrese el costo por hora del servicio "
    Leer CostoPorHora
	
    // Aplicar descuento si las horas son mayores a 10
    Si Horas > 10 Entonces
        Descuento = 0.20
    Sino
        Descuento = 0
    FinSi
	
    CostoTotal = Horas * CostoPorHora * (1 - Descuento)
	
    Escribir "El costo total del servicio es ", CostoTotal
FinFuncion

Funcion PresupuestoBanquete
    Definir NumeroPersonas, CostoPorPersona, CostoTotal, Descuento, IVA Como Real
	
    // Leer el n�mero de personas
    Escribir "Ingrese el n�mero de personas "
    Leer NumeroPersonas
	
    // Determinar el costo por persona
    Si NumeroPersonas > 300 Entonces
        CostoPorPersona = 75
    Sino
        Si NumeroPersonas >= 200 Y NumeroPersonas <= 300 Entonces
            CostoPorPersona = 85
        Sino
            CostoPorPersona = 95
        FinSi
    FinSi
	
    // Aplicar descuento del 20%
    Descuento = 0.20
    IVA = 0.15
	
    CostoTotal = (CostoPorPersona * NumeroPersonas) * (1 - Descuento)
    CostoTotal = CostoTotal * (1 + IVA) // Aplicar IVA
	
    Escribir "El costo total del banquete es ", CostoTotal
FinFuncion

Funcion GananciaUvas
    Definir TipoUva Como Caracter
    Definir Tama�o, PrecioInicial, Ganancia, IVA Como Real
	
    // Leer el tipo de uva y tama�o
    Escribir "Ingrese el tipo de uva (A o B) "
    Leer TipoUva
    Escribir "Ingrese el tama�o de la uva (1 o 2) "
    Leer Tama�o
    Escribir "Ingrese el precio inicial por kilo "
    Leer PrecioInicial
	
    // Calcular la ganancia seg�n el tipo y tama�o
    Si TipoUva = "A" Entonces
        Si Tama�o = 1 Entonces
            Ganancia = PrecioInicial + 20
        Sino
            Ganancia = PrecioInicial + 30
        FinSi
    Sino
        Si TipoUva = "B" Entonces
            Si Tama�o = 1 Entonces
                Ganancia = PrecioInicial - 30
            Sino
                Ganancia = PrecioInicial - 50
            FinSi
        FinSi
    FinSi
	
    IVA = 0.15
    Ganancia = Ganancia * (1 + IVA) // Aplicar IVA
	
    Escribir "La ganancia obtenida es ", Ganancia
FinFuncion

Funcion CostoViaje
    Definir N_Alumnos, CostoXAlumno, ValorTotal, RenDelBus Como Real
	
    // Leer el n�mero de alumnos
    Escribir "Ingrese el n�mero de alumnos "
    Leer N_Alumnos
	
    // Determinar el costo por alumno y la renta del autob�s
    Si N_Alumnos >= 200 Entonces
        CostoXAlumno = 20
    Sino
        Si N_Alumnos >= 100 Y N_Alumnos <= 199 Entonces
            CostoPorAlumno = 30
        Sino
            Si N_Alumnos >= 50 Y N_Alumnos <= 99 Entonces
                CostoXAlumno = 40
            Sino
                Si N_Alumnos < 50 Entonces
                    RentaDelBus = 2000
                    CostoXAlumno = 50
                FinSi
            FinSi
        FinSi
    FinSi
	
    CostoTotal = CostoXAlumno * N_Alumnos
	
    Si N_Alumnos < 50 Entonces
        CostoTotal = RentaDelBus
    FinSi
	
    Escribir "El costo total del viaje es ", CostoTotal
    Escribir "El costo por alumno es ", CostoXAlumno
FinFuncion

Funcion TresTiposDeBuses
    Definir TipoAutobus Como Caracter
    Definir Kilometros, Personas Como Real
	
    // Leer los datos de entrada
    Escribir "Ingrese el tipo de autob�s (A, B, C) "
    Leer TipoAutobus
    Escribir "Ingrese el n�mero de kil�metros "
    Leer Kilometros
    Escribir "Ingrese el n�mero de personas "
    Leer Personas
	
    Definir CostoPorPersona, CostoTotal, IVA Como Real
    IVA = 0.15
	
    // Determinaci�n del costo por kil�metro seg�n el tipo de autob�s
    Segun TipoAutobus Hacer
        Caso "A":
            CostoPorPersona = 2.0
        Caso "B":
            CostoPorPersona = 2.5
        Caso "C":
            CostoPorPersona = 3.0
        De Otro Modo:
            Escribir "Tipo de autob�s no v�lido."
	Fin Segun
	
	// Verificar si hay menos de 20 personas y ajustar el n�mero de personas
	Si Personas < 20 Entonces
		Personas = 20
	FinSi
	
	CostoTotal = (CostoPorPersona * Kilometros) * Personas
	CostoTotal = CostoTotal * (1 + IVA)
	
	Escribir "El costo total del viaje es ", CostoTotal
FinFuncion

Funcion EsLetra
    Definir Caracter Como Caracter
	
    // Leer el car�cter de entrada
    Escribir "Ingrese un car�cter "
    Leer Caracter
	
    Si (Caracter >= "A" Y Caracter <= "Z") O (Caracter >= "a" Y Caracter <= "z") Entonces
        Escribir "El car�cter es una letra."
    Sino
        Escribir "El car�cter no es una letra."
    FinSi
FinFuncion

Funcion CaracterTipo
    Definir Caracter Como Caracter
	
    // Leer el car�cter de entrada
    Escribir "Ingrese un car�cter "
    Leer Caracter
	
    Si Caracter = "A" O Caracter = "E" O Caracter = "I" O Caracter = "O" O Caracter = "U" O Caracter = "a" O Caracter = "e" O Caracter = "i" O Caracter = "o" O Caracter = "u" Entonces
        Escribir "El car�cter es una vocal."
    Sino
        Si Caracter >= "0" Y Caracter <= "9" Entonces
            Escribir "El car�cter es un d�gito."
        Sino
            Si Caracter = "." O Caracter = "," O Caracter = ";" O Caracter = ":" O Caracter = "!" O Caracter = "?" Entonces
                Escribir "El car�cter es un s�mbolo de puntuaci�n."
            Sino
                Si Caracter = " " Entonces
                    Escribir "El car�cter es un espacio."
                Sino
                    Escribir "El car�cter no pertenece a ninguna de las categor�as."
                FinSi
            FinSi
        FinSi
    FinSi
FinFuncion

Funcion CompararCaracteres
    Definir C1, C2 Como Caracter
	
    // Leer los caracteres de entrada
    Escribir "Ingrese el primer car�cter "
    Leer C1
    Escribir "Ingrese el segundo car�cter "
    Leer C2
	
    Si C1 = C2 Entonces
        Escribir "Los caracteres son iguales."
    Sino
        Si C1 < C2 Entonces
            Escribir "El primer car�cter es menor que el segundo."
        Sino
            Escribir "El primer car�cter es mayor que el segundo."
        FinSi
    FinSi
FinFuncion

Funcion Comparar
    Definir Frase1, Frase2 Como Cadena
	
    // Leer las frases de entrada
    Escribir "Ingrese la primera frase "
    Leer Frase1
    Escribir "Ingrese la segunda frase "
    Leer Frase2
	
    Si Frase1 = Frase2 Entonces
        Escribir "Las frases son iguales."
    Sino
        Si Frase1 < Frase2 Entonces
            Escribir "La primera frase es menor que la segunda."
        Sino
            Escribir "La primera frase es mayor que la segunda."
        FinSi
    FinSi
FinFuncion


Algoritmo Practico
	Comparar
FinAlgoritmo