## 1.	Compare las diferencias entre la planeación a corto plazo y largo plazo.
- La planificación a largo plazo se encarga de la selección adecuada de los procesos para su ejecución, los cuales son elegidos desde la cola de almacenamiento masivo y son cargados en la memoria principal para su posterior procesamiento. Por otro lado, la planificación a corto plazo se enfoca en la selección de los procesos ya preparados para su ejecución, a los cuales se les asigna una unidad central de procesamiento (CPU).
- El planificador de la CPU es el más utilizado debido a su función de asignación eficiente de los recursos de la CPU a los procesos. Por lo tanto, la velocidad es un factor importante para garantizar un rendimiento óptimo del sistema operativo. En contraste, el planificador de trabajos se enfoca más en la finalización de procesos, lo que le permite tomar más tiempo en la selección de los procesos adecuados para su carga en la memoria principal desde la cola de almacenamiento masivo. En este caso, aunque la velocidad no es crítica como en el planificador de la CPU, sigue siendo importante para garantizar una gestión adecuada de los recursos del sistema operativo.

## 2.	Caracterice dos procesos que se puedan considerar a mediano plazo.
- **La gestión de E/S:** implica la transferencia de datos entre dispositivos de E/S y la memoria principal, lo que también puede requerir la interrupción temporal de los procesos que utilizan dichos dispositivos.
- **La compilación:** este proceso implica varias etapas, como análisis léxico, análisis sintáctico, optimización y generación de código. Dependiendo del tamaño del programa y la complejidad del código, la compilación puede llevar mucho tiempo y requerir una cantidad significativa de recursos del sistema.

En ambos casos, la planificación a medio plazo puede ayudar a mejorar la eficiencia del sistema operativo al equilibrar la cantidad de procesos que compiten por los recursos y al liberar memoria cuando es necesario.

## 3.	Describa las acciones que toma el kernel para el cambio de contexto entre procesos.
1.	El kernel guarda el estado actual del proceso en ejecución, incluyendo los valores de los registros de la CPU, el estado del proceso y la información de gestión de memoria. Este contexto se almacena en la estructura de control de procesos (PCB).
2.	El kernel carga el contexto almacenado del nuevo proceso que se ha decidido ejecutar en la CPU. Esto incluye la restauración de los valores de los registros de la CPU y la información de gestión de memoria del nuevo proceso.
3.	El kernel actualiza sus estructuras de datos internas para reflejar el cambio de contexto. Por ejemplo, actualiza la lista de procesos en espera y la cola de procesos listos. 
4.	Una vez que se ha cargado el contexto del nuevo proceso y se han actualizado las estructuras de datos del kernel, el kernel reanuda la ejecución del nuevo proceso en la CPU.
