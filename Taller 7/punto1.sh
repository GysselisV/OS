
#!/bin/bash

# cat para mostrar el contenido del archivo .bash_history 
# bash_history almacena la lista de comando ejecutados en el terminal
# sort para ordenar los comandos alfabéticamente
# uniq -c para eliminar los comandos repetidos y contar cuántas veces aparecen
# sort de nuevo para ordenar los comandos por frecuencia (de menor a mayor)
# Redirigir la salida al archivo history.txt
cat ~/.bash_history | sort | uniq -c | sort > "historial.txt"


echo "Los comandos ordenados son:"
# Mostrar el contenido del archivo history.txt
cat historial.txt

echo "Cantidad de comandos:"
# wc -l para contar el número de líneas en el archivo history.txt
wc -l <  historial.txt 
