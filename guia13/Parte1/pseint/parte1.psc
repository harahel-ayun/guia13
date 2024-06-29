Proceso guia13
    Definir iva, rectotalem, rectt, acumtotal, peso, gramos, tarifa, costoBase, totalPagar, myPago, recMy Como Real;
    Definir opcion, i, cantCartas, codigopostal, post, tipo, tipoenvio, EmprMy, postMy, pesoMy, cartaMy Como Entero;
    Definir tipoMy Como Caracter;

	
    cantCartas <- 0;
    myPago <- 0;
    recMy <- 0;
	
    Para i <- 1 Hasta 3 Con Paso 1 Hacer
        Escribir 'Ingrese la empresa';
        Escribir '¿Ingresar carta? si 1 / no -1';
        Leer opcion;
		
        Mientras opcion = 1 Hacer
            Escribir 'Ingresar codigo postal';
            Leer post;
            Escribir 'Ingresar peso en gramos';
            Leer peso;
            Escribir 'Ingresar tipo de envio (1=simple / 2=certificada)';
            Leer tipoenvio;
			
            cantCartas <- cantCartas + 1;
			
            Si tipoenvio = 1 Entonces
                tipoMy <- 'simple';
                tarifa <- 0.55 * peso;
            SiNo
                tipoMy <- 'certificada';
                tarifa <- 1 * peso;
            FinSi
			
            costoBase <- tarifa;
            iva <- (21 / 100) * costoBase;
            totalPagar <- costoBase + iva;
			
            Si totalPagar > myPago Entonces
                myPago <- totalPagar;
                postMy <- post;
                pesoMy <- peso;
                cartaMy <- totalPagar;
            FinSi
			
            Escribir 'Su costo es de: ', totalPagar, ' Costo base: ', costoBase, ' Importe IVA a pagar: ', iva;
            Escribir '¿Desea ingresar otra carta? (si 1 / no -1)';
            Leer opcion;
            rectt <- rectt + totalPagar;
        FinMientras
		
        Si rectt > recMy Entonces
            recMy <- rectt;
            EmprMy <- i;
        FinSi
		
        Escribir 'Cartas enviadas: ', cantCartas;
        Escribir 'Carta mayor: postal: ', postMy, ' peso: ', pesoMy, ' tipo: ', tipoMy, ' Costo de carta: ', myPago;
    FinPara
	
    Escribir 'Empresa con mayor recaudacion: ', EmprMy, ' Total de: $', recMy;
FinProceso
