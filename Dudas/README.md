# README Dedicado a las dudas

Dentro de este README pueden colocar sus dudas con respecto al proyecto. Todas estas dudas las iremos contestando para que estén disponibles para todos los alumnos de todas las secciones. Para poder modificar este, deben de realizar los siguientes pasos:

1. Realizar un fork a este repositorio
2. Clonar el repositorio para modificarlo en sus computadoras
3. Realizar su pregunta con el formato que se les pondrá adelante.
4. Subir sus cambios a Github.
5. Crear un pull request en este repositorio. Colocar en sus Pull request al menos su número de carnet y sección.

NOTA. De esta forma también pueden pedir que se suban archivos de entrada que ustedes estén utilizando.

Para realizar su pregunta, seguir el siguiente formato:

### PREGUNTA ACÁ

1. Estaba revisando las funciones Nativas que se indican en el proyecto, sin embargo no se aclara si los parámetros a recibir deben de ser en Radianes o en Grados.**R//** En radianes.

Esto para tener un poco más ordenado y entendible este documento. 

## SECCIÓN DE PREGUNTAS

### Pregunta Welmann29
Estaba viendo los archivos de prueba que subieron y observe un par de cosas que en el enunciado no se contemplan:
1. El operador ternario nunca se menciona en el enunciado, sin embargo se puede observar en la linea 26 del archivo operaciones avanzadas.
2. La funcion lenght solo se menciona para arreglos y no para strings, y se observa en la linea 20 del mismo archivo 
3. La manera de acceder a los strings, en la linea 19 del mismo archivo, tampoco se menciona, y supongo la palabra begin y end son reservadas para acceder a los strings pero tampoco se mencionan
Consulto si realmente son cosas que se les pasaron agregar y se deben implementar, o quizas fueron funcionalidades que se quitaron al final y no se deben implementar en el proyecto

**R//** Muchas gracias por el reporte, ninguna de esas 3 operaciones se tomará en cuenta ya que no están en el enunciado. Se eliminarán de los archivos de ejemplo.

Que tal compañeros, nuevamente me disponia a probar el archivo de arreglos y nuevamente me tope con cosas no especificadas en el enunciado 
1. La operacion punto en la cual se pueden operar todos lo contenido en un array, esto se observa de la linea 26 a la 30 del archivo arreglos 
2. Las operaciones pop y push se preceden de un signo de exclamacion, en el enunciado no se muestra ningun ejemplo de esto, esto se hace de esta forma?

**R//** La operación punto se eliminará de los archivos de prueba. Para el punto 2, Julia realiza la operación de push y pop de la forma que se encuentra en los archivos de entrada. Como push!(ARREGLO, VALOR)

### Pregunta de DiiAns23:
  En la declaración de parámetros en las funciones se les debe de indicar el tipo de variable o simplemente podemos escribir el parámetro que recibe?
  
  **R//** Para la declaración de parámetros es posible indicar el tipo del parámetro mediante ::TIPO. Puedes ver ejemplo de esto en el archivo de arreglos y struct.


### Pregunta de Danloa98

  Que tal, en el apartado de funciones del enunciado en ninguna parte se especifica la forma en que establecemos los parametros, debemos ponerle el tipo? O cuál es la forma correcta de hacerlo
  
  
  **R//** No se tomará en cuenta en la hoja de calificación la validación de tipos en los parametros de funciones. Solo es obligatorio que les funcione de la forma:
  
  ```console
    function nombre_funcion(lista_id)  # donde lista_id puede ser una lista de identificadores de la forma:  a, b, c. O una lista vacía
        # Cuerpo de la funcion
    end;
  ```

### Pregunta de Crol55
Que tal auxiliares, estaba revisando el archivo de entrada structs.jl ubicado en la carpeta:

**Calificación PY1/Structs/structs.jl**

Y me di cuenta que en las lineas 38, 40 y 41, se maneja el tipo de dato al lado derecho de la variable (ej. actor::Actor), sin embargo en el **enunciado (pagina 15)** se muestra que para colocarle un tipo a una variable se le colocaba de ultimo como muestro acontinuacion. 
  ```console
    ID = Expresion :: TIPO; 
    o 
    ID = Expresion;
  ```
Cual es la correcta? Quedo al pendiente de su respuesta y gracias por su tiempo. 

