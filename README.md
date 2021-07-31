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
  ```
  "Cadena"^3 = "CadenaCadenaCadena"
  ```
- **Acceso a una pocisión:** El acceso a un elemento de una cadena se define de la siguiente manera: `string[posición]`, el cual devolvera el caracter correspondiente a esa posición
- **Acceso a una porción:** El acceso a una porción de una cadena se define de la siguiente manera: `string[inicial:final]`, el cual devolvera la cadena correspondiente al intervalo definido
- **Tamaño de una cadena:** La obtención del número de elementos de una cadena se define por la función `length(cadena)`
- **Cadena en mayusculas:** Una cadena puede ser convertida a mayusculas con la utilización de la función `uppercase(cadena)`
- **Cadena en minusculas:** Una cadena puede ser convertida a mayusculas con la utilización de la función `lowercase(cadena)`

### Operador ternario
El operador ternario es utilizado cuando se necesita entre diferentes expresiones a travez de una condición
```
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
```
    ID = Expresión ::TIPO;
    ó
    ID = Expresión;
```
Notese que la expresión `::TIPO` es opcional.

- **Asignación:** JOLC permite asignar valores a variables existentes de la siguiente manera:
```
    ID = Expresión;
```
- **Diferenciar entre variables globales y locales:**
  Debido a que la sintaxis de JOLC en cuanto a su declaración y asignación de variables es la misma, en caso de que se quiera declarar una nueva variable dentro de un entorno utilizando un `ID` existente en el entorno global se debe declarar la siguiente instrucción:
```
  local LISTA_ID;
```
donde `LISTA_ID` se define como:
```
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

COLOCAR TEXTO DE FUNCIONES NATIVAS

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

COLOCAR TEXTO DE CONDICIONALES

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

COLOCAR TEXTO DE STRUCTS

### Plot

COLOCAR TEXTO DE PLOT
