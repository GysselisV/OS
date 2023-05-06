
#!/bin/bash

# Generar un archivo nuevo llamado archivo.log
touch archivo.log

# Guardar el nombre del archivo log en una variable
log="archivo.log"

# Conseguir la fecha y hora actual con el formato que queremos
fecha=$(date +"%d/%m/%Y %H:%M:%S")

# Conseguir el nombre del host con el comando hostname
host=$(hostname)

# Conseguir la carga del sistema con el comando uptime
carga=$(uptime | awk -F '[ ,]+' '{print $10,$11,$12}')

# Conseguir la memoria libre con el comando free
memoria=$(free -m | awk '/Mem/ {print $4}')

# Poner la información en el archivo log usando echo y >>
echo -e "fecha= $fecha \nhost= $host \ncarga= $carga \nmemoria= $memoria \n" >> $log
echo "Proceso logrado con éxito"
