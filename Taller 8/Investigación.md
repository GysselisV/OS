# 1.	¿Por qué es importante para un planificador diferenciar entre un programa limitado por I/O y por CPU?

Diferenciar entre programas limitados por I/O y por CPU es importante para asignar eficientemente los recursos del sistema y optimizar el rendimiento global. Un planificador inteligente puede priorizar la ejecución de programas limitados por I/O -ya que los procesos limitados por I/O tienen ráfagas de CPU cortas, lo que significa que utilizan por menos tiempo el procesador y salen de forma más rápida para que otro proceso pueda utilizarlo- mientras esperan operaciones de entrada/salida, aprovechando esos períodos de inactividad para ejecutar otros programas limitados por CPU. De esta manera, se puede lograr una mejor utilización de los recursos y reducir el tiempo de espera de los programas en general. 

# 2.	¿Cómo entran en conflicto en determinadas configuraciones la utilización de CPU y tiempo de respuesta?

La utilización de la CPU y el tiempo de respuesta pueden entrar en conflicto en determinadas configuraciones debido a las limitaciones de recursos y las prioridades de ejecución. Cuando una CPU no es utilizada debidamente por su sistema operativo, el tiempo de respuesta aumentaría debido a que el sistema operativo limita el tiempo de respuesta del procesador. Esto puede ocurrir por varias razones, como la falta de recursos del sistema o la presencia de malware. La planificación adecuada y el equilibrio de recursos son clave para evitar retrasos en el tiempo de respuesta y optimizar el rendimiento del sistema en su conjunto.

# 3.	¿Cómo entran en conflicto en determinadas configuraciones el tiempo medio de procesamiento y tiempo máximo de espera?

El tiempo medio de procesamiento y el tiempo máximo de espera entran en conflicto en determinadas configuraciones porque cuando los procesos tienen un tiempo de procesamiento muy corto, pueden estar mucho tiempo en espera. Esto puede ocurrir cuando el planificador asigna la CPU a procesos que tienen ráfagas de CPU largas o que tienen una prioridad más alta, dejando a otros procesos con ráfagas de CPU cortas en la cola de listos. Por ejemplo, si se establece un tiempo máximo de espera muy corto, los procesos que no se completen dentro de ese tiempo serán cancelados. Esto puede aumentar el tiempo medio de procesamiento. Por lo tanto, el planificador debe tratar de minimizar el tiempo máximo de espera sin afectar el tiempo medio de procesamiento de los procesos.

# 4.	¿Cómo entran en conflicto en determinadas configuraciones la utilización de los dispositivos I/O y la utilización de la CPU?

La utilización de los dispositivos I/O y la utilización de la CPU entran en conflicto en determinadas configuraciones porque cuando la CPU espera a los dispositivos I/O una respuesta para ejecutar los procesos, la CPU no es utilizada de manera completa. Esto puede ocurrir cuando el planificador asigna la CPU a procesos que tienen muchas operaciones de entrada y salida, como leer o escribir en un disco, una red o un teclado. Estos procesos tienen ráfagas de CPU cortas, es decir, que utilizan el procesador por poco tiempo antes de solicitar un servicio de I/O. Por ejemplo, si un programa está limitado por I/O, el planificador debe asegurarse de que el proceso no se bloquee esperando una operación de E/S. Si un programa está limitado por la CPU, el planificador debe asegurarse de que el proceso tenga suficiente tiempo de CPU para completar su trabajo. Por lo tanto, el planificador debe tratar de maximizar la utilización del CPU sin afectar la utilización de los dispositivos I/O.

# 5.	Considere el siguiente conjunto de procesos, todos llegan al mismo tiempo en el orden del subíndice:
![figura 1](https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png](https://github.com/gysselis40/Sistemas-Operacionales/blob/main/Taller%208/tablas/punto%205.png)

Dibuje el diagrama de Gantt para FCFS, SJF, por prioridades (# de prioridad baja = a alta prioridad) y RR (cuanto = 1).

# 6.	¿Cuál es el tiempo de ejecución de cada proceso para cada algoritmo?
El tiempo de ejecución de cada proceso para cada algoritmo es el mismo que su tiempo de ráfaga, es decir, el tiempo que necesita el proceso para completarse.

# 7.	¿Cuál es el tiempo de espera de cada proceso para cada algoritmo?

# 8.	¿Qué algoritmo puede dar lugar a bloqueos indefinidos?

El algoritmo que puede dar lugar a bloqueos indefinidos es el algoritmo de planificación por prioridades sin desalojo, ya que, si llega un proceso con una prioridad más alta que el proceso en ejecución, este último se bloquea hasta que el primero termine. Si el proceso con mayor prioridad nunca termina o tiene ráfagas de CPU muy largas, el proceso bloqueado puede quedar en espera indefinidamente. Este problema se conoce como inanición o hambruna y se puede evitar usando una política de desalojo o asignando prioridades dinámicas que cambien según el tiempo de espera.

# 9.	Considere un sistema que implementa una planificación por colas multinivel. ¿Qué estrategia puede utilizar una computadora para maximizar la cantidad de tiempo de CPU asignada al proceso del usuario?
En un sistema que implementa una planificación por colas multinivel, hay varias estrategias que una computadora puede utilizar para maximizar la cantidad de tiempo de CPU asignada al proceso del usuario. A continuación, se mencionan algunas posibles estrategias:
-	Darles más prioridad a los procesos de usuario que a los procesos del sistema, para que los primeros tengan más oportunidad de usar el CPU.
-	Darle más tiempo de ejecución a los procesos de usuario que a los procesos del sistema, para que los primeros puedan usar el CPU más eficientemente.
-	Darle menos tiempo de espera a los procesos del sistema que a los procesos de usuario, para que los primeros puedan ceder el CPU más pronto.

