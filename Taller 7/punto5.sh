
#!/bin/bash

#Verficar que se hayan pasado dos argumentos al script
if [ $# -ne 2 ]; then

# Si no es así, mostrar un mensaje de error y salimos del script
echo “Error: se requieren dos argumentos.” echo “Uso: $0 archivo1 archivo2” exit 1 fi

#Asignar los argumentos a variables para facilitar su uso
archivo1=$1 archivo2=$2

# Usar el comando file para mostrar el tipo de archivo de cada argumento
echo “El tipo de archivo de $archivo1 es:” file $archivo1
echo “El tipo de archivo de $archivo2 es:” file $archivo2

#Usar el comando cmp para comparar los archivos a nivel de bytes y mostrar las diferencias
echo “La comparación a nivel de bytes es:” cmp $archivo1 $archivo2

#Usar el comando diff para comparar los archivos a nivel de líneas y mostrar las diferencias
echo “La comparación a nivel de líneas es:” diff $archivo1 $archivo2
