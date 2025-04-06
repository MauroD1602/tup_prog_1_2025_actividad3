Funcion ProcesarNota(alumnoMayor Por Referencia, notaMayor Por Referencia, orden)
	Definir nombre como Caracter;
	Definir nota como Real;
	
	Escribir 'Ingrese el Nombre y la nota del alumno a procesar';
	Leer nombre, nota;
	
	Si orden==1 O nota>notaMayor Entonces
		alumnoMayor<-nombre;
		notaMayor<-nota;
	FinSi  
FinFuncion

Proceso MayorNota
	Definir contador como entero;
	Definir nombre como texto;
	Definir nota como real;
	
	Para contador<-1 hasta 3 con paso 1 Hacer
		ProcesarNota(nombre, nota, contador);
	FinPara
	
	Escribir "Mayor nota: ", nota, "Alumno:", nombre;
FinProceso
