## Nombre y breve descripción de la herramienta.

*stress-ng* es una herramienta que permite aplicar diferentes tipos de estrés a un sistema informático, con el objetivo de evaluar su desempeño, su estabilidad y su tolerancia a situaciones extremas. stress-ng ofrece una amplia gama de opciones para ajustar el tipo, el tiempo, la intensidad y la frecuencia de los estrés que se imponen sobre el sistema. stress-ng también brinda información sobre las medidas de cada estrés, como el número de operaciones efectuadas, el tiempo empleado y el consumo de recursos.

## Los comandos creados con una descripción de lo que hace y porque lo hace.
```
#!/bin/bash

for i in 1 2 3 4 5
do
	uptime >> output$i.txt
	stress-ng --cpu 4 -t 60s --metrics-brief |& tee -a output$i.txt
	uptime >> output$i.txt
done 
```
