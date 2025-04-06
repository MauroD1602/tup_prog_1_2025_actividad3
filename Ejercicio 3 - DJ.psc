Proceso DJ
	Definir cantCanciones Como Entero;
    Definir min, seg, tiempoSegundos Como Entero;
    Definir tiempoTotal, mayorDuracion, menorDuracion Como Entero;
    Definir canciones, cancionMayor, cancionMenor Como Cadena;
	Definir horas, mins, segs, resto Como Entero;
	
    tiempoTotal <- 0;
    mayorDuracion <- -1;
    menorDuracion <- -1;
	
    Escribir "Ingrese la cantidad de canciones a procesar:";
    Leer cantCanciones;
	
    Para cantCanciones = 1 Hasta cantCanciones Hacer
		
        Escribir "Ingrese el nombre de la canción ", cantCanciones, ":";
        Leer canciones;
		
        Escribir "Minutos:";
        Leer min;
        Escribir "Segundos:";
        Leer seg;
		
        tiempoSegundos = min * 60 + seg;
        tiempoTotal = tiempoTotal + tiempoSegundos;
		
        Si mayorDuracion = -1 O tiempoSegundos > mayorDuracion Entonces
            mayorDuracion = tiempoSegundos;
            cancionMayor = canciones;
        FinSi
		
        Si menorDuracion = -1 O tiempoSegundos < menorDuracion Entonces
            menorDuracion = tiempoSegundos;
            cancionMenor = canciones;
        FinSi
    FinPara
	
    horas = trunc(tiempoTotal/3600);
    resto = trunc(tiempoTotal MOD 3600);
    mins = trunc(resto/60);
    segs = trunc(resto MOD 60);
	
    Escribir "Canción con mayor duración: ", cancionMayor, " (", trunc(mayorDuracion/60), ":", trunc(mayorDuracion MOD 60), ")";
    Escribir "Canción con menor duración: ", cancionMenor, " (", trunc(menorDuracion/60), ":", trunc(menorDuracion MOD 60), ")";
    Escribir "Duración total de la lista: ", horas, " horas, ", mins, " minutos, ", segs, " segundos";
FinProceso
