## Nombre y breve descripción de la herramienta.

**stress-ng** es una herramienta que permite aplicar diferentes tipos de estrés a un sistema informático, con el objetivo de evaluar su desempeño, su estabilidad y su tolerancia a situaciones extremas. stress-ng ofrece una amplia gama de opciones para ajustar el tipo, el tiempo, la intensidad y la frecuencia de los estrés que se imponen sobre el sistema. stress-ng también brinda información sobre las medidas de cada estrés, como el número de operaciones efectuadas, el tiempo empleado y el consumo de recursos.

## Los comandos creados con una descripción de lo que hace y porque lo hace.

- **Para cpu**:
  
```
#!/bin/bash

for i in 1 2 3 4 5
do
	uptime >> output$i.txt
	stress-ng --cpu 4 -t 60s --metrics-brief |& tee -a output$i.txt
	uptime >> output$i.txt
done 
```

Este comando ejecuta un estrés sobre la CPU, usando 4 núcleos durante 60 segundos. El estrés consiste en realizar operaciones matemáticas complejas que requieren un alto uso de la CPU. El comando también guarda la información sobre el tiempo de actividad del sistema antes y después del estrés, así como las métricas del estrés, en un archivo llamado output$i.txt, donde $i es el número de iteración del bucle for. Este comando se repite 5 veces para obtener diferentes muestras del estrés.

- **Para memoria**:
  
```
  #!/bin/bash
for i in 1 2 3 4 5
do
	uptime >> output$i.txt
	stress-ng  --vm 2 --vm-bytes 1G -t 60s --metrics-brief |& tee -a output$i.txt
       	uptime >> output$i.txt
done
```

Este comando ejecuta un estrés sobre la memoria virtual (VM), usando 2 procesos que reservan cada uno 1 GB de memoria durante 60 segundos. El estrés consiste en acceder a la memoria de forma aleatoria y realizar operaciones de lectura y escritura. El comando también guarda la información sobre el tiempo de actividad del sistema antes y después del estrés, así como las métricas del estrés, en un archivo llamado output$i.txt, donde $i es el número de iteración del bucle for. Este comando se repite 5 veces para obtener diferentes muestras del estrés.

- **para proceso e hilos**:

```
  #!/bin/bash

for i in 1 2 3 4 5
do
	uptime >> output$i.txt
	stress-ng --fork 4 -t 60s --metrics-brief |& tee -a output$i.txt
	uptime >> output$i.txt
done 
```

Este comando ejecuta un estrés sobre los procesos e hilos, usando 4 procesos padre que crean cada uno un proceso hijo durante 60 segundos. El estrés consiste en crear y terminar procesos e hilos de forma rápida y repetitiva. El comando también guarda la información sobre el tiempo de actividad del sistema antes y después del estrés, así como las métricas del estrés, en un archivo llamado output$i.txt, donde $i es el número de iteración del bucle for. Este comando se repite 5 veces para obtener diferentes muestras del estrés.

##  compare los resultados y explique según su criterio el comportamiento de las pruebas

- **Resultados de cpu**

![figura 1](https://github.com/gysselis40/Sistemas-Operacionales/blob/main/Taller13/CPU.png)


- **Resultados de memoria**

![figura 2](https://github.com/gysselis40/Sistemas-Operacionales/blob/main/Taller13/MV.png)


- **Resultados de procesos e hilos**

![figura 3](https://github.com/gysselis40/Sistemas-Operacionales/blob/main/Taller13/HILOS.png)


**Comprtamiento de las pruebas**

De los resultados anteriores se puede observar que:

-	El tipo de estrés que genera más bogo ops es el de memoria, seguido por el de hilos y luego el de CPU. Esto significa que el estrés de memoria realiza más operaciones por segundo que los otros dos tipos. Una posible razón es que el estrés de memoria usa procesos que reservan 1 GB de memoria cada uno, lo que implica una gran cantidad de accesos a la memoria virtual y operaciones de lectura y escritura. 


-	El tipo de estrés que tiene menor variabilidad en los bogo ops es el de memoria, seguido por el de hilos y luego el de CPU. Esto significa que el estrés de memoria tiene un rendimiento más consistente y estable que los otros dos tipos. Una posible razón es que el estrés de memoria tiene una configuración más fija y simple que los otros dos tipos, ya que solo usa dos procesos con una cantidad determinada de memoria. 

-	El tipo de estrés que genera más bogo ops/s (real time) es el de memoria, seguido por el de CPU y luego el de hilos. Esto significa que el estrés de memoria tiene un mayor rendimiento aparente que los otros dos tipos, si se mide con un reloj externo al proceso. Una posible razón es que el estrés de memoria consume menos tiempo en el kernel (sys time) que los otros dos tipos, lo que hace que su tiempo real sea más cercano a su tiempo de usuario. 



-	El tipo de estrés que tiene menor variabilidad en los bogo ops/s (real time) es el de memoria, seguido por el de hilos y luego el de CPU. Esto significa que el estrés de memoria tiene un rendimiento aparente más consistente y estable que los otros dos tipos, si se mide con un reloj externo al proceso. Una posible razón es que el estrés de memoria tiene una configuración más fija y simple que los otros dos tipos, lo que hace que su rendimiento sea menos sensible a las variaciones del sistema.

-	El tipo de estrés que genera más bogo ops/s (usr+sys time) es el de memoria, seguido por el de CPU y luego el de hilos. Esto significa que el estrés de memoria tiene un mayor rendimiento real que los otros dos tipos, si se mide con el tiempo consumido dentro del proceso y del kernel. 



-	El tipo de estrés que tiene menor variabilidad en los bogo ops/s (usr+sys time) es el de memoria, seguido por el de CPU y luego el de hilos. Esto significa que el estrés de memoria tiene un rendimiento real más consistente y estable que los otros dos tipos, si se mide con el tiempo consumido dentro del proceso y del kernel.

  
De manera general, se puede decir que el tipo de estrés que tiene mejor rendimiento y consistencia es el de memoria, mientras que el que tiene peor rendimiento y consistencia es el de hilos. Esto se puede deber a que el estrés de memoria es más simple y eficiente que los otros dos tipos, ya que solo usa dos procesos con una cantidad fija de memoria y realiza operaciones rápidas de lectura y escritura. En cambio, el estrés de hilos es más complejo e ineficiente que los otros dos tipos, ya que usa cuatro procesos padre que crean cada uno un proceso hijo y realiza operaciones lentas de creación y terminación de procesos e hilos.
