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

COLOCAR TEXTO DE LAS EXPRESIONES

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
