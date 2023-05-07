# Automatice con crontab el script 7 y 8, el script 7 se debe ejecutar cada 5 minutos y el script 8 cada minuto.

1. Usar el comando crontab -e para editar el archivo de configuración de crontab. 
2. Escribir la siguiente línea al final del archivo para que el script punto7.sh se ejecute cada 5 minutos: */5 * * * * /Taller7/punto7.sh
3. Escribir la siguiente línea al final del archivo para que el script punto8.sh se ejecute cada minuto: * * * * * /Taller7/punto8.sh
4. Guardar y salir del archivo de configuración con :wq
