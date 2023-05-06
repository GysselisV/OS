
#!/bin/bash


# Usar el comando find para buscar los archivos con la extensión .txt en todo el sistema
# y redirigir la salida al archivo txt_files.txt
find / -type f -name "*.txt" > txt_files.txt

# Usar el comando find para buscar los archivos con la extensión .png en todo el sistema
# y redirigir la salida al archivo png_files.txt
find / -type f -name "*.png" > png_files.txt

# Usar el comando find para buscar los archivos con la extensión .jpg en todo el sistema
# y redirigir la salida al archivo jpg_files.txt
find / -type f -name "*.jpg" > jpg_files.txt

# Mostrar
echo "Los archivos .txt, .png y .jpg se han buscado y posteriormente se han guardado en txt_files.txt, png_files.txt y jpg_files.txt"

