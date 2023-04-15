## 1.	Las funciones y servicios proporcionados por el OS pueden dividirse en dos categorías, descríbalas.
- **Los servicios para el usuario:** son aquellos que están destinados a mejorar la experiencia del usuario al interactuar con el sistema operativo. Estos servicios incluyen la interfaz de usuario que proporciona una forma fácil para que el usuario interactúe con el sistema operativo y ejecute programas, también está la gestión de archivos permite al usuario crear, eliminar y modificar archivos en el sistema.
- **Los servicios para el sistema:**  son aquellos que están destinados a garantizar el correcto funcionamiento del sistema operativo y de los programas que se ejecutan en él. Aquí se incluye, la gestión de recursos se encarga de asignar los recursos del sistema (como la memoria y el procesador) a los diferentes programas que se ejecutan en el sistema. La seguridad y la protección son responsables de garantizar que solo los usuarios autorizados tengan acceso a los recursos del sistema y de prevenir ataques malintencionados.

## 2.	Enumere cinco servicios proporcionados por el OS diseñados para facilitar la comodidad del usuario. 
1.	Interfaz de usuario: Proporciona una forma fácil e intuitiva para que el usuario interactúe con el sistema operativo y ejecute programas.
2.	Gestión de archivos: Permite al usuario crear, eliminar y modificar archivos en el sistema.
3.	Multitarea: permite que los usuarios ejecuten múltiples programas al mismo tiempo.
4.	Controladores de dispositivos: permiten que el sistema operativo se comunique con los dispositivos de hardware conectados al equipo.
5.	Comunicación entre procesos: Permite que diferentes programas se comuniquen entre sí y compartan información.

## 3.	Describa como se puede generar un informe estadístico de la cantidad de tiempo y recursos consumidos por un programa. 
<p>El sistema operativo puede llevar un historial de la información relevante mientras el programa se está ejecutando. Se puede analizar los registros de actividad de una aplicación sobre el tiempo que se tarda en realizar cada operación y la cantidad de recursos que se utiliza en cada operación. Se pueden utilizar herramientas de monitoreo de recursos como el Administrador de tareas en Windows o el Monitor de actividad en macOS. Estas herramientas permiten ver el uso del procesador, la memoria y el disco duro por parte del programa en tiempo real y también pueden generar informes detallados sobre el uso de recursos durante un período determinado.</p>
<p>Una vez recopilados los datos de rendimiento, se pueden generar informes estadísticos utilizando herramientas de análisis de datos, como hojas de cálculo y software de análisis de datos. Estos informes pueden incluir gráficos y tablas que muestran la cantidad de tiempo y recursos utilizados por cada función y operación del programa.</p>

## 4.	Enumere y describa cinco actividades de un OS enfocadas a la administración de archivos.
1.	Creación de archivos: El OS permite al usuario crear nuevos archivos en el sistema.
2.	Eliminación de archivos: Eliminar archivos existentes en el sistema.
3.	Modificación de archivos: Modificar el contenido de los archivos existentes en el sistema.
4.	Organización de archivos: Organizar los archivos en carpetas y subcarpetas para facilitar su acceso y gestión.
5.	Respaldo de archivos: lo que permite garantizar que los datos no se pierdan en caso de fallas del sistema o errores humanos. 

## 5.	Compare las ventajas y desventajas de usar la misma interfaz de llamadas al sistema para la manipulación de archivos como de dispositivos. 

## 6.	Conteste las siguientes preguntas: 
1.	¿Cuál es el propósito del intérprete de comandos? 
El principal propósito del intérprete de comando es proporcionar una interfaz entre el usuario y el sistema operativo. Permite al usuario interactuar con el sistema operativo mediante la introducción de comandos en forma de texto. Estos comandos son interpretados por el intérprete de comandos y ejecutados por el sistema operativo y luego se proporciona al usuario una respuesta.

2.	¿Por qué está separado del kernel? 
El intérprete de comandos está separado del kernel por razones de seguridad. Al estar separado del kernel, el intérprete de comandos puede ejecutarse en un espacio de usuario protegido, lo que reduce el riesgo de que un error en el intérprete de comandos afecte al kernel y al sistema operativo en general. Además, al ser un componente separado, el intérprete de comandos puede ser reemplazado o actualizado sin afectar al kernel.
 
3.	Liste los requisitos para desarrollar un intérprete de comandos.
 - Diseñar una sintaxis y semántica de comandos adecuada
 - Implementar un conjunto de comandos útiles que permitan a los usuarios realizar tareas comunes en el sistema operativo.
 - Implementar una interfaz de usuario adecuada.
 - El intérprete de comandos debe manejar errores de entrada del usuario y proporcionar mensajes de error útiles.
 - Proporcionar una manera de personalizar el intérprete de comandos
 - Documentación: Es importante documentar el intérprete de comandos para que los usuarios puedan comprender su funcionamiento y utilizarlo de manera adecuada. 
