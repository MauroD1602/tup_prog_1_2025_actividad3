Proceso Loteria
	Definir num, cantPar, acumImpar, cantImpar, mayor, menor, contador Como Entero;
	Definir promImpar como Real;
	
	cantPar=0;
	cantImpar=0;
	mayor=-1000000;
	menor=1000000;
	
	Para contador=0 Hasta 19 Con Paso 1 Hacer
		Escribir "Ingrese el ", contador+1, " numero";
		Leer num;
		
		Si num>mayor Entonces
			mayor = num;
		FinSi
		
		Si num<menor Entonces
			menor = num;
		FinSi
		
		Si num MOD 2 = 0 Entonces
			cantPar=cantPar+1;
		SiNo
			cantImpar=cantImpar+1;
			acumImpar= acumImpar+num;
		FinSi
	FinPara
	
	Si cantImpar>0 Entonces
		promImpar = acumImpar/cantImpar;
		Escribir "El promedio de impares es: ", promImpar;
	FinSi
	
	Escribir "Mayor numero: ", mayor;
	Escribir "Menor numero: ", menor;
	Escribir "Pares: ", cantPar;
FinProceso
