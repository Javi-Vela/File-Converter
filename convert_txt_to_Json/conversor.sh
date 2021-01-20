#!/bin/bash
directorio_origen="./formato_normal/"
directorio_destino="./formato_json/"


#lee fichero a fichero el contenido de la carpeta fomato_normal
for fichero in `ls $directorio_origen/`; do
	
	echo "[" >> $directorio_destino/$fichero"_json"
	#lee linea a linea el contenido de cada fichero 
	while read linea; do

		#comprueba si empieza por ENV
		primero=`echo $linea | cut -d " " -f1`
		if [ "$primero" = "ENV" ]; then

			#obtiene campos necesarios
			name=`echo $linea | cut -d " " -f2`
			value=`echo $linea | cut -d " " -f3`
		
			#formatea y escribe en un nuevo fichero en formato json 			
			echo "	{" >> $directorio_destino/$fichero"_json"
			echo '		"name": '$name','>> $directorio_destino/$fichero"_json"
			echo '		"value": '$value >> $directorio_destino/$fichero"_json"
			echo "	}," >> $directorio_destino/$fichero"_json"
			echo " " >> $directorio_destino/$fichero"_json"

		fi 
	done < $directorio_origen/$fichero
	echo "]" >> $directorio_destino/$fichero"_json"
done
