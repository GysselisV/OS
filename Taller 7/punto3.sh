
#!/bin/bash

# Verificar que se hayan pasado dos argumentos al script
if [ $# -ne 2 ]; then
    echo “Error: se requieren dos argumentos.”
    echo "Uso: $0 alias comando"
    exit 1
fi


# Asignar los argumentos a variables para facilitar su uso
alias=$1
comando=$2

# Escribir la línea que define el alias en el archivo .bashrc
echo "alias $alias='$comando'" >> ~/.bashrc
echo "Alias $alias agregado a .bashrc"
