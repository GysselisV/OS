# Taller 9 Operacionales
# 1.	¿Cuál es significado del término espera activa?


La espera activa es un método donde un proceso verifica constantemente una condición, como si puede acceder a una sección crítica. En el caso de los semáforos, la espera activa se da cuando un proceso quiere entrar en la sección crítica pero el semáforo está en rojo, es decir, hay otro proceso que ya está en la sección crítica. Entonces, el proceso que quiere entrar tiene que aguardar a que el semáforo se ponga en verde, y mientras tanto sigue revisando el estado del semáforo. 

# 2.	¿De qué manera se puede evitar la espera activa? 


La espera activa se puede evitar usando mecanismos de sincronización que detengan al proceso que quiere entrar en la sección crítica si esta está ocupada por otro proceso, y lo activen cuando el recurso compartido esté libre. Algunos ejemplos de estos mecanismos son los semáforos con cola de espera, los monitores, las variables condición, los cerrojos o los mensajes. Estos mecanismos hacen que el proceso que está esperando pueda dejar el procesador a otro proceso que pueda progresar, y así aumentar el rendimiento y la eficiencia del sistema.

# 3.	Explique por qué los bloqueos mediante bucle sin fin no son apropiados para sistemas monoprocesador, pero se usan con frecuencia en los sistemas multiprocesador. 


Los bloqueos mediante bucle sin fin o spinlocks son un tipo de mecanismo de sincronización que consiste en que un proceso que quiere entrar en la sección crítica verifica constantemente si el recurso compartido está libre o no. Si está libre, lo obtiene y entra en la sección crítica. Si no lo está, sigue revisando hasta que lo esté. Este tipo de bloqueos no son adecuados para sistemas monoprocesador porque si un proceso se encuentra con el recurso compartido ocupado por otro proceso, entra en un bucle sin fin que consume todo el tiempo de CPU y no deja progresar al otro proceso. Esto causa un bloqueo del sistema y una pérdida de eficiencia. En cambio, en los sistemas multiprocesador, los bloqueos mediante bucle sin fin pueden ser útiles cuando se espera que los cerrojos se mantengan durante un periodo de tiempo corto. En este caso, un proceso puede ejecutar el bucle en un procesador mientras otro proceso ejecuta su sección crítica en otro procesador. Esto evita el cambio de contexto que implica bloquear y desbloquear al proceso, y puede mejorar el rendimiento del sistema. Sin embargo, si el cerrojo se mantiene durante mucho tiempo, la espera activa puede ser ineficiente y consumir recursos innecesariamente.

# 4.	Explique por qué las interrupciones no son apropiadas para implementar primitivas de sincronización en los sistemas multiprocesador. 

Las interrupciones no son adecuadas para implementar primitivas de sincronización en los sistemas multiprocesador, por varias razones:

- Las interrupciones solo afectan al procesador que las recibe, por lo que no aseguran la exclusión mutua entre procesadores que acceden al mismo recurso compartido.

- Las interrupciones pueden causar inconsistencias en la memoria compartida si se producen durante una operación atómica o una actualización de caché.

- Las interrupciones pueden generar un alto costo de comunicación y sincronización entre los procesadores, lo que reduce el rendimiento y la escalabilidad del sistema.

- Las interrupciones pueden provocar bloqueos o inanición si un procesador no puede atender una interrupción porque está ocupado o deshabilitado.

# 5.	Describa cómo se puede utilizar la instrucción swap() para proporcionar un mecanismo de exclusión mutua que satisfaga el requisito de espera limitada.


La instrucción swap() es una operación atómica que cambia los contenidos de una posición de memoria y un registro. Se puede utilizar para proveer un mecanismo de exclusión mutua que cumpla el requisito de espera limitada de la siguiente manera:

- Cada proceso tiene una variable booleana llamada llave, que indica si quiere entrar o no en su sección crítica. Inicialmente, todas las variables llave están en falso.

- Además, hay una variable compartida llamada turno, que indica el número del proceso que tiene el derecho a entrar en su sección crítica. Inicialmente, turno vale cero.

- Cuando un proceso quiere entrar en su sección crítica, hace lo siguiente:

 - Pone su variable llave en verdadero.

 - Cambia el valor de su variable llave con el valor de la variable turno, usando la instrucción swap().

 - Si el valor devuelto por swap() es igual al número del proceso, significa que tiene el derecho a entrar en su sección crítica y lo hace.

 - Si no, significa que otro proceso tiene el derecho a entrar en su sección crítica y el proceso actual debe esperar hasta que le toque su turno.

- Cuando un proceso sale de su sección crítica, hace lo siguiente:

 - Pone su variable llave en falso.

 - Busca el siguiente proceso que tenga su variable llave en verdadero y le asigna el valor de la variable turno.

Este mecanismo asegura la exclusión mutua, ya que solo un proceso puede tener el mismo valor en su variable llave y en la variable turno. También asegura el progreso en la ejecución, ya que, si varios procesos quieren entrar en su sección crítica, al menos uno de ellos podrá hacerlo. Finalmente, asegura la espera limitada, ya que cualquier proceso podrá entrar en su sección crítica en un tiempo finito, dependiendo del número de procesos que tengan su variable llave en verdadero.

# 6.	Los servidores pueden diseñarse de modo que limiten el número de conexiones abiertas. Explique cómo puede utilizar un servidor los semáforos para limitar el número de conexiones concurrentes. 

Un servidor puede utilizar semáforos para restringir el número de conexiones concurrentes de la siguiente manera:

- El servidor tiene una variable compartida llamada conexiones, que indica el número de conexiones abiertas en cada momento. Inicialmente, conexiones vale cero.

- El servidor tiene también un semáforo llamado limite, que indica el número máximo de conexiones que se pueden abrir simultáneamente. Inicialmente, limite se inicializa con el valor deseado (por ejemplo, 5).

- Cuando el servidor recibe una solicitud de conexión de un cliente, hace lo siguiente:

 - Espera a que el semáforo limite esté en verde, es decir, que haya espacio disponible para una nueva conexión. Si el semáforo está en rojo, el servidor se bloquea hasta que se libere alguna conexión.

 - Una vez que el semáforo limite está en verde, el servidor lo reduce en uno, pasando a rojo si el valor resultante es cero.

 - El servidor aumenta la variable conexiones en uno, indicando que hay una conexión más abierta.

 - El servidor acepta la conexión del cliente y le asigna un socket para comunicarse con él.

- Cuando el servidor termina de atender a un cliente y cierra la conexión, hace lo siguiente:

 - Reduce la variable conexiones en uno, indicando que hay una conexión menos abierta.

 - Aumenta el semáforo limite en uno, pasando a verde si el valor resultante es positivo.

 - El servidor libera el socket que estaba usando con el cliente.

Este mecanismo permite al servidor controlar el número de conexiones concurrentes y evitar la sobrecarga del sistema. El semáforo limite actúa como un contador que regula el acceso al recurso compartido que son las conexiones.

# 7.	Demuestre que los monitores y semáforos son equivalentes, en cuanto a que se pueden emplear para implementar los mismos tipos de problemas de sincronización. 


- Un monitor es una estructura de datos que contiene variables y procedimientos que solo pueden ser accedidos por un proceso a la vez. Además, un monitor puede tener variables condición que permiten a los procesos esperar y ser despertados dentro del monitor. Un semáforo es una variable entera que se puede incrementar o decrementar de forma atómica y que sirve para regular el acceso a un recurso compartido. Para simular un monitor con semáforos, se puede usar un semáforo binario que controle el acceso al monitor, de forma que solo un proceso pueda entrar al monitor y ejecutar sus procedimientos. También se puede usar una cola de semáforos para cada variable condición del monitor, de forma que los procesos que quieran esperar en una variable condición se bloqueen en un semáforo de la cola y los procesos que quieran despertar a otro proceso le envíen una señal a un semáforo de la cola.

- Un semáforo se puede simular con un monitor usando una variable entera que represente el valor del semáforo y una variable condición que permita a los procesos esperar y ser despertados dentro del monitor. Para incrementar el semáforo, se incrementa la variable entera y se despierta a algún proceso que esté esperando en la variable condición. Para decrementar el semáforo, se comprueba si la variable entera es cero, y en ese caso se espera en la variable condición hasta que sea positiva. Luego se decrementa la variable entera.

De manera más resumida, un monitor se puede simular con semáforos usando un semáforo binario para el acceso al monitor y una cola de semáforos para cada variable condición. Además, un semáforo se puede simular con un monitor usando una variable entera para el valor del semáforo y una variable condición para la espera y el despertar de los procesos.

# 8.	La exclusión mutua estricta en un monitor hace que el monitor de búfer limitado sea adecuado para porciones pequeñas. Explique por qué es cierto esto. 

Esto es cierto porque la exclusión mutua estricta en un monitor implica que solo un proceso puede entrar al monitor en cada momento, lo que puede causar bloqueos o esperas innecesarias si el proceso que entra al monitor usa una parte pequeña del búfer limitado y deja espacio libre para otro proceso. Por ejemplo, si el búfer tiene capacidad para 5 elementos y el productor produce uno solo y entra al monitor, el consumidor tendrá que aguardar a que el productor salga del monitor, aunque haya espacio para más elementos en el búfer. Por su parte, la exclusión mutua es una técnica utilizada en programación concurrente para evitar que dos o más procesos o hilos de ejecución accedan simultáneamente a un recurso compartido. Un monitor es una estructura de datos abstracta que se utiliza para implementar la exclusión mutua. Los monitores son ejecutados con exclusión mutua, lo que significa que sólo un hilo puede ejecutar un método del monitor en un momento dado. En el caso de los monitores de búfer limitado, la exclusión mutua estricta hace que sean adecuados para porciones pequeñas.

# 9.	¿Por qué Windows y Linux utilizan bloqueos mediante bucle sin fin como mecanismo de sincronización solo en los sistemas multiprocesador y no en los sistemas monoprocesador?


Windows y Linux usan bloqueos mediante bucle sin fin como mecanismo de sincronización solo en los sistemas multiprocesador y no en los sistemas monoprocesador porque en estos últimos el bucle sin fin puede causar un bloqueo del sistema y una pérdida de eficiencia. Si un proceso se encuentra con el recurso compartido ocupado por otro proceso, entra en un bucle sin fin que consume todo el tiempo de CPU y no deja progresar al otro proceso. En cambio, en los sistemas multiprocesador, el bucle sin fin puede ser útil cuando se espera que los cerrojos se mantengan durante un periodo de tiempo corto. En este caso, un proceso puede ejecutar el bucle en un procesador mientras otro proceso ejecuta su sección crítica en otro procesador. Esto evita el cambio de contexto que implica bloquear y desbloquear al proceso, y puede mejorar el rendimiento del sistema.

