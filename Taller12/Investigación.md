## Taller 12 - Sistemas operacionales

# 1.	Explique el soporte por hardware requerido para implementar la paginación bajo demanda.

El soporte por hardware requerido para implementar la paginación bajo se basan en dividir el espacio de direcciones de un proceso en páginas que pueden ser cargadas o descargadas de forma independiente en los marcos de memoria física. Para ello, se necesita una tabla de páginas que permita el bit válido-inválido o una serie de bits de protección, que indiquen si una página está o no en memoria y qué tipo de acceso se le permite. Además, se necesita una memoria secundaria que almacene las páginas que no estén en la memoria principal, se le conoce como dispositivo de intercambio o espacio de intercambio. 

# 2.	¿Qué es la característica de copia durante la escritura y en qué circunstancias es ventajoso usar estas características?

La característica de copia durante la escritura es una técnica de optimización que consiste en retrasar la copia de una página hasta que se produzca una escritura sobre ella. Esta técnica es ventajosa en las siguientes circunstancias:

- Cuando se quiere crear un proceso hijo mediante la llamada al sistema **fork**, se puede evitar copiar todo el espacio de direcciones del proceso padre al hijo y solo marcar las páginas como de solo lectura y compartidas entre ambos procesos. Así, solo se copiarán las páginas que sean modificadas por alguno de los procesos, ahorrando tiempo y espacio.
- Cuando se quiere modificar un archivo mapeado en memoria, se puede evitar escribir los cambios directamente en el disco y solo marcar las páginas como de solo lectura. Así, solo se escribirán en el disco las páginas que sean modificadas por el proceso, reduciendo el número de operaciones de entrada/salida.

# 3.	¿Cuál es el soporte de hardware requerido para implementar las características de copia durante escritura?

El soporte de hardware requerido para implementar las características de copia durante escritura es el siguiente:

- Una **unidad de gestión de memoria (MMU)** que pueda marcar las páginas como de solo lectura y lanzar una excepción cuando se intente escribir en ellas.
- Un **mecanismo de interrupción** que permita al sistema operativo manejar las excepciones de escritura y asignar una nueva página al proceso que intenta modificarla. 
- Un **dispositivo de disco** donde se almacenen las páginas originales y se puedan leer o escribir cuando sea necesario.

# 4.	Indique una situación en la que el algoritmo de sustitución de las páginas menos frecuentes utilizadas genere menos fallos de página que el algoritmo de sustitución de las páginas más recientemente utilizadas. 

Un caso en el que el algoritmo de sustitución de las páginas más recientemente utilizadas provoque más fallos de página que el algoritmo de sustitución de las páginas menos frecuentemente utilizadas es cuando el proceso usa un conjunto amplio de páginas una única vez y luego las abandona. Por ejemplo, si el proceso abre un archivo grande y lo lee de principio a fin y luego lo cierra. En este caso, el algoritmo LFU conservaría las páginas con mayor frecuencia de uso, mientras que el algoritmo LRU reemplazaría estas páginas por otras que solo se usan una vez. 

# 5.	Indique una situación en la que el algoritmo de sustitución de las páginas más frecuentemente utilizadas genere menos fallos de página que el algoritmo de sustitución de las páginas menos recientemente utilizadas. 

Un caso en el que el algoritmo de sustitución de las páginas menos recientemente utilizadas provoque más fallos de página que el algoritmo de sustitución de las páginas más frecuentemente utilizadas es cuando el proceso usa un conjunto reducido de páginas con mucha frecuencia y luego pasa a otro conjunto reducido de páginas con mucha frecuencia. Por ejemplo, si el proceso salta entre dos funciones que tienen diferentes variables locales. En este caso, el algoritmo MFU conservaría las páginas con mayor frecuencia de uso, mientras que el algoritmo LRU reemplazaría estas páginas por las del conjunto nuevo cada vez que se cambia de función. 

# 6.	Un sistema utiliza un algoritmo de sustitución FIFO para las páginas resientes y un conjunto compartido de marcos libres compuesto por páginas recientemente utilizadas. Si el conjunto compartido de marcos libres se gestiona utilizando la política de sustitución menos recientemente utilizadas. De una respuesta a los siguientes casos: 

- Si se produce un fallo de página y la página se encuentra en el conjunto compartidos de marcos libres, ¿cómo puede generarse espacio libre para la nueva página solicitada? 
- Si se produce un fallo de página y la página se encuentra en el conjunto compartido de marcos libres, ¿cómo se activa la página residente y cómo se gestiona el conjunto compartido de marcos libres para hacer sitio para la página solicitada?

Respuestas: 

Si se produce un fallo de página y la página se encuentra en el conjunto compartido de marcos libres, se pueden dar dos casos:

  - Si hay algún marco libre en el conjunto compartido, se puede asignar ese marco a la página solicitada y cargarla desde el disco.
  - Si no hay ningún marco libre en el conjunto compartido, se debe aplicar la política LRU para elegir una página del conjunto compartido para sustituirla por la página solicitada. La página elegida debe ser escrita en disco si ha sido modificada y marcada como inválida en su tabla de páginas correspondiente.
 
Si se produce un fallo de página y la página no se encuentra en el conjunto compartido de marcos libres, se deben seguir los siguientes pasos:

  - Se busca un marco libre en el conjunto residente del proceso que ha causado el fallo.
  - Si hay un marco libre en el conjunto residente, se asigna ese marco a la página solicitada y se carga desde el disco.
  - Si no hay un marco libre en el conjunto residente, se aplica la política FIFO para elegir una página del conjunto residente para sustituirla por la página solicitada. La página elegida debe ser escrita en disco si ha sido modificada y marcada como inválida en su tabla de páginas correspondiente. Además, se debe mover el marco de la página elegida al conjunto compartido de marcos libres y actualizar su bit LRU.
  - Se reinicia la instrucción que causó el fallo de página.

# 7.	Considere un sistema de paginación bajo demanda con las siguientes tasas de utilización: 

-	Uso de CPU 20% 
-	Paginación de disco 97,7% 
-	Otros dispositivos de I/O 5% 
Para las siguientes afirmaciones, indique si permitirá o es probable que permita mejorar las tasas de utilización de la CPU. De razones para su respuesta. 
-	Instalar una CPU más rápida. 
-	Instalar un disco de paginación de mayor tamaño. 
-	Incrementar el grado de multiprogramación. 
-	Instalar más memoria principal.
-	Instalar un disco duro más rápidos.
Respuestas: 
- Instalar una CPU más rápida no permitirá mejorar la tasa de utilización de la CPU, ya que el cuello de botella está en el disco de paginación, que tiene una tasa de utilización muy alta. La CPU tendrá que esperar más tiempo a que el disco termine las operaciones de lectura y escritura de las páginas.
- Instalar un disco de paginación de mayor tamaño tampoco permitirá mejorar la tasa de utilización de la CPU, ya que el problema no es el espacio disponible en el disco, sino la velocidad de acceso a las páginas. Un disco más grande no reducirá el número de fallos de página ni el tiempo de servicio de cada uno.
- Incrementar el grado de multiprogramación es probable que empeore la tasa de utilización de la CPU, ya que aumentará la competencia por los recursos de memoria y disco. Esto provocará más fallos de página y más intercambios entre procesos, lo que reducirá el tiempo efectivo de ejecución de la CPU.
- Instalar más memoria principal permitirá mejorar la tasa de utilización de la CPU, ya que disminuirá el número de fallos de página y el grado de intercambio. Esto hará que la CPU pueda ejecutar más instrucciones sin tener que esperar al disco. Además, se reducirá la carga del disco y se liberará tiempo para otras operaciones de I/O.
- Instalar un disco duro más rápido permitirá mejorar la tasa de utilización de la CPU, ya que reducirá el tiempo de servicio de cada fallo de página y el tiempo de intercambio entre procesos. Esto hará que la CPU tenga que esperar menos al disco y pueda ejecutar más instrucciones. También se reducirá la carga del disco y se liberará tiempo para otras operaciones de I/O.
