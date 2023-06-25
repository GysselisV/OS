## Nombre y breve descripción de la herramienta.

**stress-ng** es una herramienta que permite aplicar diferentes tipos de estrés a un sistema informático, con el objetivo de evaluar su desempeño, su estabilidad y su tolerancia a situaciones extremas. stress-ng ofrece una amplia gama de opciones para ajustar el tipo, el tiempo, la intensidad y la frecuencia de los estrés que se imponen sobre el sistema. stress-ng también brinda información sobre las medidas de cada estrés, como el número de operaciones efectuadas, el tiempo empleado y el consumo de recursos.

## Los comandos creados con una descripción de lo que hace y porque lo hace.

- Para **cpu**:
  
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

- Para **memoria**:
  
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

- para **proceso e hilos**:

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

![figura 1]([https://github.com/gysselis40/Sistemas-Operacionales/blob/main/Taller%208/tablas/punto%205.png](https://github.com/gysselis40/Sistemas-Operacionales/blob/main/Taller13/CPU.png)


- **Resultados de memoria**

![figura 2]([https://github.com/gysselis40/Sistemas-Operacionales/blob/main/Taller%208/tablas/punto%205.png](https://github.com/gysselis40/Sistemas-Operacionales/blob/main/Taller13/MV.png)


- **Resultados de procesos e hilos**

![figura 3]([https://github.com/gysselis40/Sistemas-Operacionales/blob/main/Taller%208/tablas/punto%205.png](https://github.com/gysselis40/Sistemas-Operacionales/blob/main/Taller13/HILOS.png)https://github.com/gysselis40/Sistemas-Operacionales/blob/main/Taller13/HILOS.png)
