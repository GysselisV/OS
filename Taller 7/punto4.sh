
#!/bin/bash

# Usar el comando uname -o para obtener el nombre del Sistema Operativo
os=$(uname -o)

# Usar el comando uname -m para obtener la arquitectura de la máquina
arq=$(uname -m)

#Usar el comando uname -r para obtener la versión del kernel
ver=$(uname -r)

#Usar el comando echo para imprimir la información en la pantalla
echo “Sistema Operativo: $os” echo “Arquitectura de la máquina: $arq” echo “Versión del kernel: $ver”
