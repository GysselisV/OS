### 1. En entornos compartidos, los usuarios comparten el sistema. Esto puede dar lugar a varios problemas de seguridad. 

*a)* Mencione dos problemas y explíquelos. 

***Brechas de privacidad/seguridad***: Esto se da cuando usuarios con malas intenciones obtienen acceso a información confidencial de otros usuarios, es decir que podrían ver datos como correos electrónicos, documentos, números de contacto y demás datos personales que no deberían ser visibles para cualquiera. (Samaniego, 2021).

Con esta vulnerabilidad se puede dar paso a un segundo problema que corresponde a la ***fuga de información***, y es que, con el acceso de cualquier usuario a esos datos, se puede compartir información confidencial, como nombres de usuario, contraseñas, etc. Y esta información puede ser robada y utilizada para fines ilegales, como es el caso del robo de identidad, acceso no autorizado a redes sociales e incluso a cuentas bancarias. (Santander, s.f.)




*b)* Es posible asegurar el mismo grado de seguridad en un sistema compartido que en un sistema dedicado. Explique su respuesta.

Es más complejo alcanzar el mismo grado de seguridad en un sistema compartido que en uno dedicado. La razón es que, en un sistema dedicado, la seguridad está enfocada únicamente en el sistema en sí y en los usuarios que están autorizados -que regularmente son pocos-, es por ello por lo que hay menos peligros y existe una menor probabilidad de que ocurran vulnerabilidades (Rodriguez, 2021). Por otro lado, en un sistema compartido, el enfoque es un poco más amplio, ya que los usuarios tienen acceso a los mismos recursos y a la misma estructura, y, en consecuencia, existe una mayor probabilidad de que ocurran vacíos de seguridad.

Ahora bien, lo anterior no quiere decir que resulte imposible lograr un alto grado de seguridad en un sistema compartido. Para garantizar que esto ocurra, se puede limitar el acceso, encriptar los datos, tener un sistema de autenticación de usuarios y realizar monitoreos constantemente (Intelligencia, 2017). Finalmente, es bastante importante que de manera conjunta se concientice a los usuarios sobre las buenas prácticas de seguridad informática. 

### 2.	Un problema común en los OS es la utilización de recursos. Enumere los recursos que deben gestionarse en las siguientes maquina (explique porqué):

***Sistemas embebidos***: memoria, procesador, energía, almacenamiento y dispositivos de entrada/salida.

Generalmente estos sistemas tienen recursos limitados y, regularmente, son utilizados en aplicaciones críticas en las que la disponibilidad, la fiabilidad y la eficiencia son esenciales. Deben ser gestionados cuidadosamente debido a las limitaciones de espacio y energía.

***Mainframe***: CPU, memoria, almacenamiento, red y seguridad.

En los mainframes, la gestión de recursos es fundamental debido a que varias personas los usan simultáneamente (IBM, s.f.), lo que puede afectar su eficiencia. Además, los mainframes se utilizan comúnmente para procesar información financiera y almacenar datos de clientes, por lo que la seguridad también es esencial.

***Workstation***: procesador, memoria, almacenamiento, tarjeta gráfica, dispositivos periféricos y seguridad.

Las workstations son comúnmente empleadas en campos como ingeniería, arquitectura, animación, diseño gráfico y edición de video, por lo que necesitan características técnicas superiores a las de una computadora de escritorio común, con procesadores más poderosos, más memoria RAM, tarjetas gráficas especializadas, monitores de alta resolución y almacenamiento veloz. (LAGE, 2019).

***Servidor***: CPU, memoria, almacenamiento, red, seguridad y balanceo de carga.

Los servidores se utilizan para alojar servicios y aplicaciones en línea, por lo que es esencial administrar la memoria, el almacenamiento y la red para procesar las solicitudes de los clientes y almacenar grandes cantidades de datos. Además, se debe implementar medidas de seguridad sólidas para proteger la información sensible y crítica almacenada en el servidor.

***Mobile***: CPU, memoria, almacenamiento, batería, conectividad y seguridad.

Los dispositivos móviles deben gestionar correctamente sus recursos para asegurar una buena duración de la batería y un rendimiento óptimo. Es importante administrar la memoria RAM para permitir la ejecución de múltiples aplicaciones y mejorar el rendimiento, el almacenamiento interno para almacenar archivos relevantes, la conectividad para mantenerse en línea y transferir datos, y la seguridad para proteger la privacidad del usuario y prevenir accesos no autorizados.

### 3.	Caracterice dos casos de uso para implementar un OS para servidor y PC.

El primer caso de uso se sitúa en una escuela que requiere un sistema operativo para sus servidores y computadoras personales que sea fácil de administrar. En cuanto al servidor, en este se requiere herramientas de colaboración y gestión de recursos para múltiples usuarios, mientras que en las computadoras personales se necesita software educativo.

El segundo caso de uso se refiere a una empresa de comercio electrónico que necesita un sistema operativo para servidor y PC para alojar su sitio web de venta en línea y gestionar eficientemente todos los movimientos. Por parte del sistema operativo del servidor, este debe ser seguro, garantizar la privacidad y seguridad de los datos de los clientes. Por otro lado, para las computadoras personales se necesita un sistema operativo que ofrezca herramientas de gestión de ventas para los empleados de la empresa, con una interfaz de usuario intuitiva y que permita el control de inventario y seguimiento de transacciones.

### 4.	Compare las diferencias entre multiprocesamiento simétrico y asimétrico

<table>
  <tr>
    <th>Simétrico</th>
    <th>Asimétrico </th>
  </tr>
  <tr>
    <td>Los procesadores tienen la misma capacidad de procesamiento y pueden realizar las mismas tareas con la misma eficiencia</td>
    <td>Un procesador puede estar diseñado para realizar una tarea específica de manera más eficiente que el resto.</td>
  </tr>
  <tr>
    <td>procesadores idénticos comparten el mismo espacio de memoria</td>
    <td>Procesadores pueden tener diferentes niveles de acceso a recursos compartidos como memoria</td>
  </tr>
  <tr>
    <td>Mayor escalabilidad</td>
    <td>Escalabilidad limita</td>
  </tr>
  <tr>
    <td>la carga de trabajo se distribuye de manera uniforme</td>
    <td>La carga de trabajo se asigna de manera desigual según las habilidades y capacidades de cada procesador</td>
  </tr>
  <tr>
    <td>Todos los procesadores ejecutan tareas sobre el SO</td>
    <td>Solo el procesador maestro ejecuta tareas sobre el SO</td>
  </tr>
</table>


### 5.	Enumere los requerimientos para que dos máquinas se junten en un clúster y provean un servicio de alta disponibilidad (HA).

Para que dos o más máquinas se unan en un clúster y proporcionen un servicio de alta disponibilidad, es necesario: 

1.	Una red de alta velocidad y confiable para comunicación y sincronización de datos entre las máquinas.
2.	Que las máquinas que integran el clúster cuenten con hardware compatible en arquitectura de CPU, capacidad de memoria y almacenamiento.
3.	Instalar un software de clúster que permita a las máquinas trabajar en conjunto.
4.	La sincronización de datos para asegurarse de que todas las máquinas del clúster tengan la misma información y configuración.
5.	herramientas de monitoreo y administración para detección de fallos.
6.	Para garantizar la continuidad del servicio en caso de fallas, es recomendable contar con componentes extra que puedan reemplazar a los componentes defectuosos.

### 6.	Compare las diferencias entre una excepción y una interrupción.

<table>
  <tr>
    <th>Excepción</th>
    <th>Interrupción</th>
  </tr>
  <tr>
    <td>Generada por programa </td>
    <td>Generada por un evento externo </td>
  </tr>
  <tr>
    <td>Puede ser predecible</td>
    <td>Impredecible</td>
  </tr>
  <tr>
    <td>No siempre conlleva a la detención del programa </td>
    <td>Siempre conlleva a la detención del programa </td>
  </tr>
  <tr>
    <td>Algunas veces puede esperar para su tratamiento</td>
    <td>Tratamiento prioritario</td>
  </tr>
</table>

### 7.	El DMA (acceso directo a memoria) se usa en dispositivos I/O para evitar uso innecesario de la CPU. 

*a)* ¿Como interactúa la CPU con el dispositivo para coordinar la transferencia? 

La CPU es responsable de establecer la configuración inicial del controlador DMA para que este pueda llevar a cabo la transferencia de datos hacia o desde un dispositivo I/O. Además, la CPU indica la ubicación de la memoria donde se deben guardar los datos transferidos.

*b)* ¿Como sabe la CPU que las operaciones de memoria se han completado?

Cuando se completa la transferencia de datos, la CPU establece una señal de interrupción que activa el controlador DMA. Después, la CPU procesa la interrupción y verifica el estado del controlador DMA para confirmar que la transferencia se ha realizado correctamente. Así es como la CPU sabe que las operaciones de memoria se han completado en el dispositivo I/O. (García & Serra, s.f.).

### 8.	Identifique dos razones por las que la cache es útil. ¿Qué problemas resuelve y causa?

El uso de caché es útil para disminuir el tiempo de acceso a los datos y la cantidad de tráfico de memoria. La caché almacena datos frecuentemente utilizados en un lugar fácilmente accesible para el procesador, lo que agiliza el procesamiento y disminuye el tiempo de espera para acceder a los datos. Asimismo, la caché contribuye a reducir el tráfico de memoria, lo que resulta en una mejora del rendimiento general del sistema.

### 9.	Explique con un ejemplo, como se manifiesta el problema de mantener la coherencia de los datos de cache en los siguientes entornos: 

***Sistema distribuido***
Cuando varios procesadores comparten los mismos datos en un sistema distribuido y cada uno tiene su propia caché, puede haber un problema de mantener la coherencia de los datos en caché. Supongamos que dos procesadores tienen una copia de la misma información almacenada en sus respectivas cachés, y uno de ellos la modifica. Si la caché del otro procesador no se actualiza, podría tener una versión antigua de la información, lo que puede causar errores en el procesamiento de la información. (Lisandro & Sumoza, s.f.).

***Sistema multiprocesador***
En un sistema multiprocesador, mantener la coherencia de los datos de caché se convierte en un problema cuando varios procesadores tienen acceso a la misma memoria principal y cada uno posee su propia caché. Si un procesador modifica los datos de la memoria principal, los demás procesadores deben actualizar su caché para tener los datos más recientes y evitar discrepancias en los resultados. Si no se logra esta actualización, el sistema puede presentar errores. (upc, 2023).

***Sistema de un solo procesador***
El problema de mantener la coherencia de los datos de caché en un sistema de un solo procesador se produce cuando la memoria caché y la memoria principal contienen diferentes valores de la misma ubicación de memoria. Si la caché no se actualiza correctamente, el procesador podría utilizar valores obsoletos y producir resultados incorrectos.

### Referencias 
García , J., & Serra, J. (s.f.). https://rua.ua.es/dspace/bitstream/10045/15468/18/tema5.pdf. Obtenido de https://rua.ua.es/dspace/bitstream/10045/15468/18/tema5.pdf
IBM. (s.f.). ¿Qué es un mainframe? Obtenido de IBM: https://www.ibm.com/mx-es/topics/mainframe
Intelligencia, B. d. (30 de noviembre de 2017). Guia sobre seguridad informática o ciberseguridad. Obtenido de Blog de la Intelligencia: http://blog.intelligenia.com/2017/11/guia-seguridad-informatica-ciberseguridad.html
LAGE. (27 de agosto de 2019). ¿Qué es una workstation y para qué sirve? Obtenido de LAGE: https://www.lage.com.mx/blog/que-es-una-workstation-y-para-que-sirve
Lisandro, J., & Sumoza, R. (s.f.). Cache memory coherence protocol for distributed systems. Obtenido de Scielo: http://ve.scielo.org/scielo.php?script=sci_arttext&pid=S0254-07702007000200008#:~:text=La%20distribuci%C3%B3n%20de%20la%20memoria%20cache%20en%20sistemas%20con%20memoria,los%20otros%20nodos%20del%20sistema.
Rodriguez, A. (20 de diciembre de 2021). Seguridad Profesional hoy. Obtenido de Seguridad empresarial con servidores dedicados : https://www.seguridadprofesionalhoy.com/seguridad-empresarial-con-servidores-dedicados/
Samaniego, J. F. (16 de diciembre de 2021). Willis Towers Whats. Obtenido de Ciberseguridad: Las brechas de datos en empresas más comunes : https://willistowerswatsonupdate.es/ciberseguridad/brechas-de-datos-en-empresas-mas-comunes/
Santander, B. (s.f.). ¿Qué es la fuga de información? Obtenido de Banco Santander: https://www.bancosantander.es/glosario/fuga-datos#:~:text=Una%20fuga%20de%20datos%20o,personas%20no%20autorizadas%20para%20ello.
upc. (2023). Introducción a los sistemas multiprocesadores. Obtenido de https://personals.ac.upc.edu/miguel/materiales/docencia/doctorado/introduccion.pdf
