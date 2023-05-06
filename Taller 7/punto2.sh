
#!/bin/bash

# Verificar que se hayan pasado 4 argumentos al script
if [ $# -ne 4 ]; then
    echo "se requieren cuatro argumentos: $0 archivo permisos usuario grupo"
    exit 1
fi

# Asignar los argumentos a variables para facilitar su uso
archivo=$1
permisos=$2
usuario=$3
grupo=$4

# Listar el archivo para ver sus permisos previo al cambio
echo "Archivo actual (antes de realizar el cambio)"
ls -la $archivo

# Cambiar los permisos del archivo
chmod $permisos $archivo

# Cambiar el usuario y el grupo del archivo
chown $usuario:$grupo $archivo

# Confirmación del cambio
echo "Archivo con los cambios realizados:"
ls -la $archivo
