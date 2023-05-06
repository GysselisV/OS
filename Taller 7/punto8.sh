
#!/bin/bash

# El primer argumento es el nombre del archivo .log a comprimir
# El segundo argumento es el tamaño máximo en kilobytes que puede tener el archivo sin comprimir

# Verificar que se hayan pasado dos argumentos al script
if [ $# -ne 2 ]; then
  # Si no es así, mostrar un mensaje de error y salimos del script
  echo "Error: se requieren dos argumentos."
  echo "Uso: $0 archivo.log tamaño_maximo"
  exit 1
fi

# Asignar los argumentos a variables para facilitar su uso
archivo=$1
tamaño_maximo=$2

# Usar el comando du para obtener el tamaño actual del archivo en kilobytes
# Usar el comando awk para extraer solo el valor que nos interesa
tamaño_actual=$(du -k $archivo | awk '{print $1}')

# Comparar el tamaño actual con el tamaño máximo usando el símbolo -gt que significa mayor que
if [ $tamaño_actual -gt $tamaño_maximo ]; then
  # Si el tamaño actual es mayor que el tamaño máximo, comprimir el archivo usando el comando gzip
  gzip $archivo
  # Mostrar un mensaje de confirmación
  echo "El archivo $archivo ha sido comprimido con éxito."
else
  # Si el tamaño actual es menor o igual que el tamaño máximo, no se nada y mostrar un mensaje informativo
  echo "El archivo $archivo no necesita ser comprimido."
fi
