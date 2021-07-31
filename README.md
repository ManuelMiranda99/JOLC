# JOLC

Julia es un lenguaje de programación bastante reciente que le interesa a científicos de datos, estadísticos y analistas financieros. Este cuenta con distintas características atractivas para los programadores. Aún así, Julia al ser un lenguaje de programación bastante reciente, hay muy pocos lugares donde se pueda probar su sintaxis de manera sencilla. Es por eso que se desarrollo JOLC, un lenguaje de programación basado en Julia que se podrá programar desde el navegador.

A continuación se detalla la sintaxis que tendrá JOLC. Además de algunos archivos de entrada de prueba que podrán probar para familiarizarse con la sintaxis.

## Comentarios

Los comentarios pueden ser:
- Una linea (#)
- Multiples lineas (#= ... =#)

```
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

También JOLC puede crear matrices usando espacios para separar elementos en una fila, y punto y coma `;` para separar las filas. Por ejemplo:

```julia
[1 2 3; 4 5 6]
```

Los arreglos cuentan con distintas operaciones que se detallarán en la sección de _Arreglos_.

### **Struct**

Estos son tipos compuestos definidos por el programador. Para su declaración de estos se puede realizar de la siguiente manera:

```julia
struct NOMBRE_STRUCT
    LISTA_ATRIBUTOS
end
```

Y para crear una variable con este tipo compuesto, se realiza de la siguiente manera:

```julia
ID = NOMBRE_STRUCT(LISTA_VALORES)
```

Los atributos de los Struct pueden ser utilizados como parte de cualquier expresión. Para acceder a los atributos de los Struct, se utiliza la notación `.`.

```julia
ID.ID
```

Hay que tomar en cuenta que existen 2 tipos de Struct. Aquellos Struct que son **inmutables** y los que son **mutables**. El anterior caso es la declaración de un Struct inmutable. Es decir que no acepta instrucciones de asignación en sus atributos, de la forma:

```julia
ID.ID = expresión
```

Para declarar un Struct mutable se realiza de la siguiente manera:

```julia
mutable struct NOMBRE_STRUCT
    LISTA_ATRIBUTOS
end
```

Este tipo de Struct si acepta asignaciones en sus atributos.

En la sección de Structs se detallará más al respecto de estos.

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
(EXPRESIÓN RELACIONAL O LOGICA) ? RESULTADO SI ES VERDADERO : RESULTADO SU ES FALSO
```
  
## Instrucciones

JOLC contará con las siguientes instrucciones de Julia:

### Impresión

JOLC cuenta con 3 distintas instrucciones de imprimir.

```julia
print(expresión)        # Esta imprime sin realizar un salto de línea
println(expresión)      # Esta imprime realizando un salto de línea
printTS()               # Esta muestra la tabla de símbolos en dónde fue llamada
```

Para imprimir más de un valor por línea, se puede imprimir una secuencia de valores separados por comas. También dentro de las cadenas se pueden colocar cualquier expresión utilizando el operador `$`. Por ejemplo:

```julia
println("+", "-")       # Imprime + -
print("El resultado de 2 + 2 es $(2 + 2)")  # Imprime El resultado de 2 + 2 es 4
println("$a $(b[1])") # Imprime el valor de a y el valor de b[1]
```

### Asignaciones

COLOCAR TEXTO DE ASIGNACIONES

### Llamada a funciones

COLOCAR TEXTO DE LLAMADA A FUNCIONES

### Distintas Funciones Nativas

COLOCAR TEXTO DE FUNCIONES NATIVAS

### Funciones

COLOCAR TEXTO DE FUNCIONES

### Condicionales

COLOCAR TEXTO DE CONDICIONALES

### Loops

COLOCAR TEXTO DE LOOPS

### Arreglos

COLOCAR TEXTO DE ARREGLOS

### Structs

COLOCAR TEXTO DE STRUCTS

### Plot

COLOCAR TEXTO DE PLOT
