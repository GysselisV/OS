![imagen](https://github.com/gysselis40/Sistemas-Operacionales/blob/main/Taller10/t10.png)
# 1. Considere la imagen, demuestre que las cuatro condiciones necesarias para que se produzca un interbloqueo se cumplen.

La imagen muestra un interbloqueo entre vehículos en una intersección.
Las cuatro condiciones necesarias para que se produzca un interbloqueo son: exclusión mutua, retención y espera, no desalojo y espera circular.
- Exclusión mutua: cada vehículo (proceso) espera salir (ejecutarse) y necesita el espacio (recurso) ocupado por otro vehículo. Cada calle puede estar ocupada únicamente por un vehículo a la vez. 
- Retención y espera: cada vehículo tiene asignado un espacio y espera obtener otro espacio ocupado por otro vehículo.
- No desalojo: un vehículo solo puede liberar el espacio de forma voluntaria, no puede ser forzado a hacerlo por otro vehículo.
- Espera circular: los vehículos forman una cadena circular, de modo que cada uno tiene el espacio que otro quiere.

# 2. Considere la imagen, enuncie una regla simple para evitar los interbloqueos en este sistema.

- Una regla simple para evitar los interbloqueos en este sistema podría ser: solo permitir que un vehículo entre en la intersección si hay espacio suficiente para que salga por el otro lado.
- Otra regla simple podría ser: establecer un orden de prioridad entre los vehículos según su dirección y dejar pasar primero a los que tienen mayor prioridad.

# 3. Explique cómo se cumplen las condiciones básicas de interbloqueo en el problema de la cena de los filósofos.

El problema de la cena de los filósofos consiste en cinco filósofos sentados alrededor de una mesa circular, con cinco palillos entre ellos. Cada filósofo necesita dos palillos para comer el plato de espaguetis que tiene frente a él.
Las condiciones básicas de interbloqueo se cumplen de la siguiente manera:
  - Exclusión mutua: cada palillo (recurso) solo puede ser usado por un filósofo (proceso) a la vez.
  - Retención y espera: cada filósofo toma un palillo y espera obtener el otro palillo que necesita para comer.
  - No desalojo: un filósofo solo puede soltar un palillo cuando termina de comer, no puede ser quitado por otro filósofo.
  - Espera circular: los filósofos forman una cadena circular, de modo que cada uno tiene el palillo que otro quiere.

# 4. Explique cómo podría evitarse los interbloqueos impidiendo que se cumpla una de las condiciones en el problema de la cena de los filósofos.

- Una forma de evitar los interbloqueos es impedir que se cumpla la condición de espera circular. Esto se puede lograr asignando un orden a los palillos y haciendo que cada filósofo solicite primero el palillo con menor número y luego el palillo con mayor número. De esta forma, al menos uno de los filósofos podrá obtener los dos palillos que necesita y comer.
- Otra forma de evitar los interbloqueos es impedir que se cumpla la condición de retención y espera. Esto se puede lograr haciendo que cada filósofo solo tome un palillo cuando haya dos palillos disponibles a su lado. De esta forma, ningún filósofo quedará bloqueado esperando un segundo palillo.

# 5. Compare el esquema de espera circular con los distintos esquemas de evasión de interbloqueos en lo que respecta a tiempo de ejecución adicional necesario.

- El esquema de espera circular consiste en evitar que se forme una cadena circular de procesos esperando recursos asignados a otros procesos. Esto se puede hacer asignando un orden a los recursos y haciendo que cada proceso solicite los recursos en orden creciente o decreciente.
- Los esquemas de evasión de interbloqueos consisten en evitar que el sistema entre en un estado inseguro, es decir, un estado en el que existe la posibilidad de que se produzca un interbloqueo. Esto se puede hacer usando algoritmos que verifiquen si una solicitud de recursos puede ser satisfecha sin llevar al sistema a un estado inseguro, como el algoritmo del banquero.
- En cuanto al tiempo de ejecución adicional necesario, el esquema de espera circular es más simple y rápido que los esquemas de evasión de interbloqueos, ya que solo requiere comparar los números de los recursos solicitados y asignados. Los esquemas de evasión de interbloqueos requieren mantener y actualizar información sobre los recursos disponibles, asignados y solicitados por cada proceso, y realizar cálculos para determinar si una solicitud puede ser concedida o no.

# 6. Compare el esquema de espera circular con los distintos esquemas de evasión de interbloqueos en lo que respecta a tasa de procesamiento del sistema.

- La tasa de procesamiento del sistema se refiere a la cantidad de procesos que pueden completarse en una unidad de tiempo.
- En cuanto a la tasa de procesamiento del sistema, el esquema de espera circular puede reducir la utilización de los recursos y aumentar el tiempo de espera de los procesos, ya que impone restricciones sobre el orden en que los recursos pueden ser solicitados y asignados. Esto puede provocar que algunos recursos queden inactivos mientras otros están ocupados o esperando.
- Los esquemas de evasión de interbloqueos pueden mejorar la utilización de los recursos y disminuir el tiempo de espera de los procesos, ya que permiten asignar los recursos según la demanda y la disponibilidad, siempre que no se comprometa la seguridad del sistema. Esto puede favorecer que los recursos se usen de forma más eficiente y que los procesos se ejecuten más rápido.

# 7. Considere un sistema que tiene cuatro recursos del mismo tipo, compartidos entre tres procesos; cada proceso necesita como máximo dos recursos. Demuestre que el sistema está libre de interbloqueos.

- Se puede usar el teorema del límite inferior para demostrar que el sistema no tiene interbloqueos, si el número total de recursos es mayor o igual que el número máximo por proceso más el número de procesos menos uno.
- En este caso, se cumple que 4 >= 2 + 3 - 1, por lo que el sistema no tiene interbloqueos.
- Esto se debe a que hay recursos suficientes para al menos un proceso en espera, y a que cada proceso necesita solo dos recursos. Así se evita que todos los procesos esperen recursos de otros y que haya espera circular.

# 8. Considere el problema de los filósofos, los palillos se colocan en el centro de la mesa y cualquier filósofo puede usar dos palillos, la solicitud de los palillos se hace de una en una. Describa una regla simple para determinar si una solicitud podría ser satisfecha sin dar lugar a interbloqueos, dada la asignación actual de palillos a los filósofos.

- Una posible regla para evitar interbloqueos es: solo dar un palillo a un filósofo si hay tres o más palillos libres en la mesa.
- Esta regla asegura que al menos un filósofo pueda comer dos palillos, sin esperar circularmente.
- La regla funciona porque evita que un filósofo deje a otro sin palillos o se bloquee con uno solo. La regla tiene el problema de que puede disminuir el uso de los palillos y aumentar la espera de los filósofos, y no asegura que todos coman igual.

# 9. ¿Cuál es la suposición optimista realizada en el algoritmo de detección de interbloqueos y como podría violarse esta suposición?

- El algoritmo de detección de interbloqueos consiste en verificar periódicamente si existe algún conjunto de procesos en estado de interbloqueo, usando información sobre los recursos disponibles, asignados y solicitados por cada proceso.
- La suposición optimista realizada en este algoritmo es que todos los procesos eventualmente liberarán los recursos que tienen asignados, incluso si están bloqueados esperando otros recursos.
- Esta suposición podría romperse si alguno de los procesos bloqueados nunca libera sus recursos, por ejemplo, por un error de programación, una falla del sistema o una interrupción externa.

