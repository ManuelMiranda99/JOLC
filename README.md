# JOLC

Julia es un lenguaje de programación bastante reciente que le interesa a científicos de datos, estadísticos y analistas financieros. Este cuenta con distintas características atractivas para los programadores. Aún así, Julia al ser un lenguaje de programación bastante reciente, hay muy pocos lugares donde se pueda probar su sintaxis de manera sencilla. Es por eso que se desarrollo JOLC, un lenguaje de programación basado en Julia que se podrá programar desde el navegador.

A continuación se detalla la sintaxis que tendrá JOLC. Además de algunos archivos de entrada de prueba que podrán probar para familiarizarse con la sintaxis.

## Comentarios

Los comentarios pueden ser:

- Una linea (#)
- Multiples lineas (#= ... =#)

```julia
    # Esto es un comentario de una sola linea

    #=
        Esto es un
        comentario de
        multiples lineas
    =#
```

## Tipos

JOLC aceptará distintos tipos de datos con los que cuenta Julia. Entre ellos se aceptarán:

### **Int64**

Valores númericos enteros. Por ejemplo: `3`, `2`, `-1`, `-100`.

### **Float64**

Valores númericos con punto flotante. Por ejemplo: `3.1415`, `2.7182`, `0.5`.

### **Bool***

Los valores booleanos únicamente pueden ser `true` o `false`.

### **Char**

Estos son literales de carateres, se definen con comillas simples. Por ejemplo: `'a'`, `'b'`, `'z'`.

### **String**

Estos representan cadenas de texto, se definen con comillas dobles. Por ejemplo: `"Hola"`, `"Mundo"`, `"!"`.

Los Strings también cuentan con operaciones especiales que se pueden realizar con estos. Se detalla más adelante en la sección de _Expresiones_.

### **Arreglos**

Estos son un conjunto de valores indexados entre 1 hasta n, que pueden ser de diferentes tipos. Por ejemplo:

```julia
[10, 20, 30, 40]
["Hola", "Mundo"]
['a', 2.0, 5, ["Hola", "Mundo"]].
```

Los arreglos cuentan con distintas operaciones que se detallarán en la sección de _Arreglos_.

### **Struct**

Estos son tipos compuestos definidos por el programador. Existen 2 tipos de Struct, aquellos que son **mutables** y los **inmutables**. Para la declaración de struct inmutables se realizar de la siguiente manera:

```julia
struct NOMBRE_STRUCT
    LISTA_ATRIBUTOS
end;
```

Para declarar un Struct mutable se agrega la palabra reservada __mutable__:

```julia
mutable struct NOMBRE_STRUCT
    LISTA_ATRIBUTOS
end;
```

Y para crear una variable con nuestro Struct, se escribe:

```julia
ID = NOMBRE_STRUCT(LISTA_VALORES);
```

Un ejemplo de creación de struct podría ser:

```julia
struct Rectangulo
    base::Int64;
    altura;
end;
```

Noten que en los atributos pueden o no llevar tipo de dato.

En la sección de _Structs_ se detallará más al respecto de estos.

## Expresiones

JOLC acepta operaciones aritmeticas, relacionales y logicas de la siguiente forma:

### Aritméticas
Entre las operaciones aritmeticas disponibles vamos a encontrar las siguientes:
- **Suma:** La suma de dos expresiones se define por el símbolo `+` 
- **Resta:** La resta de dos expresiones y la negación de una expresión aritmetica se define por el símbolo `-` 
- **Multiplicación:** La multiplicación de dos expresiones se define por el símbolo `*` 
- **División:** La división de dos expresiones se define por el símbolo `/` 
- **Potencia:** La potenciación de una expresión se define por el símbolo `^` 
### Relacionales
Entre las operaciones relacionales disponibles vamos a encontrar las siguientes:
- **Igualdad:** Esta se define por el símbolo `==`
- **Diferenciación:** Esta se define por el símbolo `!=`
- **Mayor que:** Esta se define por el símbolo `>`
- **Menor que:** Esta se define por el símbolo `<`
- **Mayor o igual que:** Esta se define por el símbolo `>=`
- **Menor o igual que:** Esta se define por el símbolo `<=`

### Lógicas
Entre las operaciones lógicas disponibles vamos a encontrar las siguientes:
- **AND:** Esta se define por el símbolo `&&`
- **OR:** Esta se define por el símbolo `||`
- **NOT:** Esta se define por el símbolo `!`

### Cadenas
Entre las operaciones con cadenas (strings) vamos a encontrar las siguientes:
- **Concatenación:** La unión de dos cadenas de texto se define por el símbolo `*`
- **Repetición:** Permite que una cadena de texto se repita cierto número de veces, esta se define por el símbolo `^`
  ```julia
  "Cadena"^3 = "CadenaCadenaCadena"
  ```
- **Acceso a una pocisión:** El acceso a un elemento de una cadena se define de la siguiente manera: `string[posición]`, el cual devolvera el caracter correspondiente a esa posición
- **Acceso a una porción:** El acceso a una porción de una cadena se define de la siguiente manera: `string[inicial:final]`, el cual devolvera la cadena correspondiente al intervalo definido
- **Tamaño de una cadena:** La obtención del número de elementos de una cadena se define por la función `length(cadena)`
- **Cadena en mayusculas:** Una cadena puede ser convertida a mayusculas con la utilización de la función `uppercase(cadena)`
- **Cadena en minusculas:** Una cadena puede ser convertida a mayusculas con la utilización de la función `lowercase(cadena)`

### Operador ternario
El operador ternario es utilizado cuando se necesita entre diferentes expresiones a travez de una condición
```julia
(EXPRESIÓN RELACIONAL O LOGICA) ? RESULTADO SI ES VERDADERO : RESULTADO SI ES FALSO
```
  
## Instrucciones

JOLC contará con las siguientes instrucciones de Julia:

### Impresión

JOLC cuenta con 3 distintas instrucciones de imprimir.

```julia
print(expresión);        # Esta imprime sin realizar un salto de línea
println(expresión);      # Esta imprime realizando un salto de línea
printTS();               # Esta muestra la tabla de símbolos en dónde fue llamada
```

Para imprimir más de un valor por línea, se puede imprimir una secuencia de valores separados por comas. También dentro de las cadenas se pueden colocar cualquier expresión utilizando el operador `$`. Por ejemplo:

```julia
println("+", "-");       # Imprime + -
print("El resultado de 2 + 2 es $(2 + 2)");  # Imprime El resultado de 2 + 2 es 4
println("$a $(b[1])"); # Imprime el valor de a y el valor de b[1]
```

JOLC también tiene la opción de imprimir arreglos y struct. Por ejemplo:

```julia
    a = [0, 1, 2];
    println(a);          # Imprime [0, 1, 2]
    s = Hora(10, 30);
    print(s);            # Imprime Hora(10, 30)
```

### Declaraciones y Asignaciones

JOLC permite la declaración y asignación de variables, las variables no pueden cambiar su tipo de dato una vez definido

- **Declaración:** JOLC permite declarar variables de dos maneras:
```julia
    ID = Expresión ::TIPO;
    ó
    ID = Expresión;
```
Notese que la expresión `::TIPO` es opcional.

- **Asignación:** JOLC permite asignar valores a variables existentes de la siguiente manera:
```julia
    ID = Expresión;
```
- **Diferenciar entre variables globales y locales:**
  Debido a que la sintaxis de JOLC en cuanto a su declaración y asignación de variables es la misma, en caso de que se quiera declarar una nueva variable dentro de un entorno utilizando un `ID` existente en el entorno global se debe declarar la siguiente instrucción:
```julia
  local LISTA_ID;
```
donde `LISTA_ID` se define como:
```julia
    ID,ID,...,ID
```
de esta manera se sabra que estos ID seran para variables locales del entorno

### Llamada a funciones

Una llamada a función es como un desvío en el flujo de la ejecución. En lugar de pasar a la siguiente sentencia, el flujo salta al cuerpo de la función, ejecuta esta y regresa para continuar después de la llamada a la función.

Para llamar a una función se realiza de la siguiente manera:

```julia
NOMBRE_FUNCION(LISTA_PARAMETROS);
```

Los parámetros se separan por medio de `,` si la función cuenta con más de un parámetro. Cuando se pasa un arreglo o struct como argumento de una función, en realidad se pasa una referencia de este. Por lo que cualquier cambio que se realice al parámetro, se podrá observar después de salir de la función.

Estas se pueden utilizar en expresiones, debido a que existen funciones que retornan un valor.

### Distintas Funciones Nativas

JOLC utiliza diversas funciones nativas para sus expresiones, estas son:
- **Parse:** Toma una cadena y la convierte al tipo de numero que se le indice si es posible.
```julia
    parse(Int64,"8200")
    ó
    parse(Float64,"3.13159")
```
- **Trunc:** Convierte un número flotante a un número entero sin redondearlo
```julia
    trunc(Int64, 3.99999)  # retorna 3
```
- **Float:** Convierte un número entero a un número flotante
```julia
    float(34)  # retorna 34.0
```
- **String:** Convierte el argumento en una cadena, puede usarse en numeros y en arreglos
```julia
    string(45.87)  # retorna "45.87"
    string([1,2,3])  # retorna "[1,2,3]"
```
- **typeof:** Muestra el tipo del argumento
```julia
    typeof(Expresión)
```

### Funciones

Las funcioens son secuencias de sentencias que ejecuta una operación que nosotros deseamos. Cuando se crea una función se especifica su nombre y secuencia de sentencias. Luego, ya se puede llamar a estas usando su nombre y los parámetros solicitados. Se definen las funciones en JOLC así:

```julia
function NOMBRE_FUNCION(LISTA_PARAMETROS)
    LISTA_INSTRUCCIONES
end;
```

Las instrucciones se separarán utilizando `;`. Por ejemplo:

```julia
function imprimirHola()
    println("Hola");
    println("Hola");
end;
```

Además, los parámetros de las funciones vendrán separadas por `,` y podrán o no llevar tipo de dato.

```julia
function sumar(num1::Int64, num2)
    return num1 + num2;
end;
```

Hay que tomar en cuenta que las variables y parámetros que se creen dentro de una función son locales, es decir que únicamente existen dentro de la función.

Las funciones también pueden llamarse a sí mismas. Lo que permite una gran variedad de aplicaciones en estructuras de datos y algoritmos de ordenamiento.

### Condicionales

JOLC cuenta con sentencias condicionales, lo que permite que un bloque de codigo pueda ser o no ejecutado. Estas se definen por `if`,`if...else` y `if...elseif`. Su estructura es la siguiente:
```julia
if CONDICION
    LISTA_INTRUCCIONES
end;

if CONDICION1
    LISTA_INTRUCCIONES
elseif CONDICION2
    LISTA_INTRUCCIONES
else
    LISTA_INTRUCCIONES
end;
```

### Loops

JOLC cuenta con sentencias iterativas, lo que permite ejecutar repetidamente un bloque de sentencias. Existen 2 de estas, el ciclo `while` y el ciclo `for`.

#### While

La sentencia `while` sigue la siguiente estructura:

```julia
while CONDICION
    LISTA_INSTRUCCIONES
end;
```

Y se ejecutará hasta que la condición del while se vuelva __false__. De manera más formal, el flujo de un while es el siguiente:

1. Se determina si la condición es __true__ o __false__.
2. Si es __false__, se sale de la sentencia `while` y continúa la ejecución con la siguiente sentencia.
3. Si es __true__, ejecuta cada una de las sentencias en la lista de instrucciones.

#### For

La sentencia `for` en JOLC puede iterar sobre tipos que son iterables. Como lo son rangos, Array, String.

Sigue la siguente estructura:

```julia
for 
```

Algunos ejemplos de for en JOLC son:

```julia
for i in 1:4                # Únicamente se recorre ascendentemente
    print(i, " ");          # Imprime 1 2 3 4
end;

for letra in "Hola Mundo!"  # Puede ser también una variable de tipo String
    print(letra, "-");      # Imprime H-o-l-a- -M-u-n-d-o-!-
end;

for animal in ["perro", "gato", "tortuga"]
    println("$animal es mi favorito");
    #=
        Imprime:
            perro es mi favorito
            gato es mi favorito
            tortuga es mi favorito
    =#
end;
```

Hay que tomar en cuenta en los arreglos que también puede ser un rango de algún arreglo. Por ejemplo:

```julia
for it in a[begin:end]
    # Haz algo
end;
```

Dentro de los ciclos también existen las sentencias de control `break` y `continue`. Las cuales, una termina el bucle y la otra regresa al inicio del bucle ignorando las sentencias faltantes.

### Arreglos

COLOCAR TEXTO DE ARREGLOS

### Structs

Como se menciono en secciones anteriores, JOLC cuenta con tipos compuestos que los desarrolladores podrán definir mediante una sintaxis. Existen de tipo mutables e inmutables, con una diferencia bastante importante. Para la declaración de estos se utiliza la siguiente sintaxis:

```julia
# Struct mutable
struct NOMBRE_STRUCT
    LISTA_ATRIBUTOS
end;

# Struct inmutable
mutable struct NOMBRE_STRUCT
    LISTA_ATRIBUTOS
end;
```

Y para la creación de variables con nuestro Struct, ya sea mutable e inmutable:

```julia
ID = NOMBRE_STRUCT(LISTA_VALORES);
```

Siendo los valores los correspondientes a sus atributos en la lista de atributos.

Los atributos de los Struct pueden ser utilizados como parte de cualquier expresión. Para acceder a los atributos de los Struct, se utiliza la notación `.`.

```julia
ID.ID
```

También si nosotros deseamos modificar únicamente uno de los atributos de nuestro Struct, ahí es donde entra la importancia de los dos tipos de Struct en JOLC. Los Struct que son inmutables no aceptan instrucciones de asignación en sus atributos, no se les puede cambiar el valor. En cambio, los Struct mutables si aceptan este tipo de instrucciones.

```julia
# Suponiendo que X es una variable Struct inmutable
X.atributo = expresión
ERROR !!! No se puede cambiar Struct inmutable

# Suponiendo que Y es una variable Struct mutable
Y.atributo = expresión
```

Otros aspectos importantes de los Structs es que estos pueden ser llamados como parámetros en las funciones y, al igual que los arreglos, se pasan por referencia. Por lo que el valor de los atributos de los Structs también cambia. Por ejemplo:

```julia
mutable struct Estructura
    x;
end;

function cambiarAtributo(s)
    s.x = 10;
end;

a = Estructura(0);
println(a);             # Imprime 'Estructura(0)'
println(a.x);           # Imprime 0

cambiarAtributo(a);
println(a);             # Imprime 'Estructura(10)'
println(a.x);           # Imprime 10
```

Hay que tomar en cuenta de que si la estructura fuera de tipo inmutable, esta mostraría un error por la asignación.

También, se debe de tomar en cuenta que los Struct se pueden utilizar como retorno de una función.

### Plot

COLOCAR TEXTO DE PLOT
