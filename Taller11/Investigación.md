## Taller 11 Operacionales
# 1.	Explique la diferencia entre los conceptos de fragmentación interna y externa.

La diferencia entre los conceptos de fragmentación interna y externa es que la fragmentación interna es el espacio de almacenamiento que permanece sin usar entre los bloques de memoria asignados, mientras que la fragmentación externa son los huecos entre los bloques contiguos que son muy pequeños para atender una solicitud. La fragmentación interna se produce cuando se asigna más espacio a un programa que el requerido, y la fragmentación externa se produce cuando un programa se elimina de una memoria dejando espacio libre que provoca una fragmentación externa.

# 2.	¿En qué forma el editor de montaje cambia el acoplamiento de las instrucciones y los datos a direcciones de memoria? 

El editor de montaje cambia el acoplamiento de las instrucciones y los datos a direcciones de memoria mediante el proceso de reubicación. La reubicación consiste en ajustar las direcciones relativas o simbólicas que usan las instrucciones y los datos a direcciones absolutas o físicas que corresponden a la ubicación real en la memoria.

# 3.	¿Qué información debe pasar el compilador al editor de montaje para facilitar el acoplamiento de memoria de éste?

La información que debe pasar el compilador al editor de montaje para facilitar el acoplamiento de memoria de éste es el mapa de memoria lógica del programa. El mapa de memoria lógica contiene la información sobre las secciones o segmentos del programa, su tamaño, su tipo (código, datos, pila, etc.) y su dirección relativa o simbólica.

# 4.	En el siguiente orden, se tienen cinco particiones de memoria de 100 KB, 500 KB, 200 KB, 300 KB, y 600 KB. ¿Como situarían en memoria una serie de procesos de 212 KB, 417 KB, 112 KB y 426 KB en ese orden con los algoritmos de primer ajuste, mejor ajuste y peor ajuste? ¿Qué algoritmo hace el uso más eficiente de la memoria?

Para situar en memoria una serie de procesos de 212 KB, 417 KB, 112 KB y 426 KB en ese orden con los algoritmos de primer ajuste, mejor ajuste y peor ajuste, se obtienen las siguientes distribuciones:

1. Primer ajuste: Se asigna el primer bloque libre que sea suficiente para el proceso.
    - Proceso 1 (212 KB): Se asigna a la partición 2 (500 KB)
    - Proceso 2 (417 KB): Se asigna a la partición 5 (600 KB)
    - Proceso 3 (112 KB): Se asigna al hueco de la partición 2 (288 KB)
    - Proceso 4 (426 KB): No se puede asignar a ninguna partición o hueco disponible.

2. Mejor ajuste: Se asigna el bloque libre más pequeño que sea suficiente para el proceso.
    - Proceso 1 (212 KB): Se asigna a la partición 4 (300 KB)
    - Proceso 2 (417 KB): Se asigna a la partición 2 (500 KB),
    - Proceso 3 (112 KB): Se asigna a la partición 3 (200 KB)
    - Proceso 4 (426 KB): Se asigna a la partición 5 (600 KB), 

 3. Peor ajuste: Se asigna el bloque libre más grande que sea suficiente para el proceso.
    - Proceso 1 (212 KB): Se asigna a la partición 5 (600 KB),
    - Proceso 2 (417 KB): Se asigna al hueco de la partición 5 (388 KB)
    - Proceso 3 (112 KB): Se asigna a la partición 2 (500 KB)
    - Proceso 4 (426 KB): Se asigna al hueco de la partición 2 (388 KB)
El uso más eficiente de la memoria lo logra el algoritmo de mejor ajuste, ya que coloca los procesos en los bloques de memoria que tienen el tamaño más adecuado para ellos, reduciendo el espacio sin asignar y consiguiendo que todos los procesos tengan un bloque asignado. Además, es el que menor fragmentación interna presenta. 

# 5.	La mayoría de OS permiten a los programas asignar más memoria a su espacio de direcciones durante la ejecución. ¿Que se necesitaría para soportar la asignación dinámica de memoria en los siguientes esquemas? 

1. Asignación contigua de memoria. 
2. Segmentación pura. 
3. Paginación pura.

Lo que se necesitaría para soportar la asignación dinámica de memoria en los siguientes esquemas es:

- Asignación contigua de memoria: Se necesitaría un mecanismo de intercambio o swapping, que consiste en transferir temporalmente los procesos que no están en ejecución desde la memoria principal al disco, y luego volverlos a cargar cuando se necesiten. De esta forma, se libera espacio contiguo en la memoria para asignar a los procesos que requieren más memoria.

- Segmentación pura: Se necesitaría un mecanismo de crecimiento dinámico de segmentos, que consiste en permitir que los segmentos puedan aumentar o disminuir su tamaño durante la ejecución, según la demanda del proceso. De esta forma, se evita la fragmentación interna y se aprovecha mejor el espacio de memoria.

- Paginación pura: Se necesitaría un mecanismo de asignación de marcos de página, que consiste en asignar o liberar marcos de página (bloques fijos de memoria) a las páginas (unidades lógicas de memoria) de los procesos según su necesidad. De esta forma, se permite que los procesos puedan ocupar más o menos espacio de memoria sin necesidad de ser contiguos.

# 6.	Compare los esquemas de organización de la memoria principal basados en una asignación continua de memoria, en una segmentación pura y una paginación pura con respecto a: 

1. Fragmentación externa. 
2. Fragmentación interna. 
3. Capacidad de compartir código.

Los esquemas de organización de la memoria principal basados en una asignación continua de memoria, en una segmentación pura y una paginación pura se comparan con respecto a:

- Fragmentación externa: La asignación continua de memoria produce una alta fragmentación externa, ya que deja huecos entre los bloques contiguos que son muy pequeños para atender una solicitud. La segmentación pura también produce fragmentación externa, pero menor que la asignación continua, ya que permite asignar bloques de tamaño variable según el tamaño de los segmentos. La paginación pura no produce fragmentación externa, ya que permite asignar bloques de tamaño fijo (marcos de página) a las páginas sin importar su ubicación.

- Fragmentación interna: La asignación continua de memoria produce una baja fragmentación interna, ya que asigna el espacio exacto que necesita el proceso. La segmentación pura también produce una baja fragmentación interna, ya que asigna el espacio exacto que necesita cada segmento. La paginación pura produce una alta fragmentación interna, ya que asigna bloques fijos (marcos de página) que pueden ser mayores que el tamaño de las páginas.

- Capacidad de compartir código: La asignación continua de memoria no permite compartir código entre procesos, ya que cada proceso ocupa un espacio contiguo y exclusivo en la memoria. La segmentación pura permite compartir código entre procesos, ya que cada proceso tiene una tabla de segmentos que puede apuntar a segmentos compartidos en la memoria. La paginación pura también permite compartir código entre procesos, ya que cada proceso tiene una tabla de páginas que puede apuntar a marcos de página compartidos en la memoria.

# 7.	En un OS con paginación, un proceso no puede acceder a una zona de memoria que no sea de su propiedad. 

1. ¿Por qué? 
2. ¿Como podía el OS permitir el acceso a otras zonas de memoria? 
3. ¿Por qué debería o por qué no debería?

En un OS con paginación, un proceso no puede acceder a una zona de memoria que no sea de su propiedad.

- ¿Por qué? Porque el OS usa un mecanismo de protección basado en bits asociados a cada marco de página, que indican si el marco es válido o no para el proceso. Si el proceso intenta acceder a un marco inválido, se produce una falta de página y el OS interviene para resolverla o abortar el proceso.

- ¿Como podía el OS permitir el acceso a otras zonas de memoria? El OS podría permitir el acceso a otras zonas de memoria mediante el uso de memoria compartida, que consiste en asignar marcos de página comunes a varios procesos que necesitan comunicarse o compartir datos. De esta forma, los procesos pueden acceder a las mismas zonas de memoria con permiso del OS.

- ¿Por qué debería o por qué no debería? El OS debería permitir el acceso a otras zonas de memoria cuando sea necesario para facilitar la comunicación o la cooperación entre procesos. Por ejemplo, si dos procesos necesitan sincronizar sus acciones o intercambiar información, pueden usar la memoria compartida como un medio de comunicación. El OS no debería permitir el acceso a otras zonas de memoria cuando sea innecesario o peligroso para la seguridad o la integridad de los procesos. Por ejemplo, si un proceso intenta acceder a una zona de memoria que contiene datos sensibles o código crítico de otro proceso, el OS debe impedirlo para evitar posibles ataques o errores.

# 8.	Compare el mecanismo de paginación con el de segmentación con respecto a la cantidad de memoria requerida por las estructuras de producción de direcciones para convertir las direcciones virtuales en direcciones físicas.

El mecanismo de paginación se compara con el de segmentación con respecto a la cantidad de memoria requerida por las estructuras de producción de direcciones para convertir las direcciones virtuales en direcciones físicas de la siguiente forma:

- En el mecanismo de paginación, las estructuras de producción de direcciones son las tablas de páginas, que contienen las correspondencias entre las páginas (unidades lógicas) y los marcos de página (unidades físicas). La cantidad de memoria requerida por las tablas de páginas depende del número de páginas que tenga cada proceso y del tamaño de cada entrada en la tabla. Por ejemplo, si un proceso tiene 1024 páginas y cada entrada ocupa 4 bytes, la tabla de páginas requerirá 4 KB de memoria.

- En el mecanismo de segmentación, las estructuras de producción de direcciones son las tablas de segmentos, que contienen las correspondencias entre los segmentos (unidades lógicas) y los bloques de memoria (unidades físicas). La cantidad de memoria requerida por las tablas de segmentos depende del número de segmentos que tenga cada proceso y del tamaño de cada entrada en la tabla. Por ejemplo, si un proceso tiene 16 segmentos y cada entrada ocupa 8 bytes, la tabla de segmentos requerirá 128 bytes de memoria.

En general, el mecanismo de paginación requiere más memoria que el mecanismo de segmentación para las estructuras de producción de direcciones, ya que el número de páginas suele ser mayor que el número de segmentos y el tamaño de cada entrada suele ser similar o mayor. Sin embargo, esto puede variar según el diseño específico del sistema operativo y la organización de la memoria.

# 9.	Considere la siguiente tabla de segmento:
![tabla1](https://github.com/gysselis40/Sistemas-Operacionales/blob/main/Taller11/images/t1.png)

¿Cuáles son las direcciones físicas para las siguientes direcciones lógicas? 
1. 0. 430 
2. 1. 10 
3. 2. 500 
4. 3. 400 
5. 4. 112

La dirección lógica se compone de un número de segmento y un desplazamiento dentro del segmento. La dirección física se obtiene sumando la base del segmento al desplazamiento, siempre que el desplazamiento sea menor que la longitud del segmento. Si el desplazamiento es mayor que la longitud del segmento se produce una violación de segmento y el acceso a memoria es inválido.
Aplicando este método a las direcciones lógicas dadas y a la tabla de segmentos, se obtienen las siguientes direcciones físicas:
a. 0.430: La dirección lógica corresponde al segmento 0 con un desplazamiento de 430. La base del segmento 0 es 219 y su longitud es 600. Como el desplazamiento es menor que la longitud, se suma la base al desplazamiento y se obtiene la dirección física: 219 + 430 = 649.
b. 1.10: La dirección lógica corresponde al segmento 1 con un desplazamiento de 10. La base del segmento 1 es 2300 y su longitud es 14. Como el desplazamiento es menor que la longitud, se suma la base al desplazamiento y se obtiene la dirección física: 2300 + 10 = 2310.
c. 2.500: La dirección lógica corresponde al segmento 2 con un desplazamiento de 500. La base del segmento 2 es 90 y su longitud es 100. Como el desplazamiento es mayor que la longitud, se produce una violación de segmento y el acceso a memoria es inválido.
d. 3.400: La dirección lógica corresponde al segmento 3 con un desplazamiento de 400. La base del segmento 3 es 1327 y su longitud es 580. Como el desplazamiento es menor que la longitud, se suma la base al desplazamiento y se obtiene la dirección física: 1327 + 400 = 1727.
e. 4.112: La dirección lógica corresponde al segmento 4 con un desplazamiento de 112. La base del segmento 4 es 1952 y su longitud es 96. Como el desplazamiento es mayor que la longitud, se produce una violación de segmento y el acceso a memoria es inválido.

![tabla2](https://github.com/gysselis40/Sistemas-Operacionales/blob/main/Taller11/images/t2.png)
