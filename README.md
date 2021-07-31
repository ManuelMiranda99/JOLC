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

Estos son tipos compuestos definidos por el programador. Existen 2 tipos de Struct, aquellos que son **mutables** y los **inmutables**. Para la declaración de struct inmutables se realizar de la siguiente manera:

```julia
struct NOMBRE_STRUCT
    LISTA_ATRIBUTOS
end
```

Para declarar un Struct mutable se agrega la palabra reservada __mutable__:

```julia
mutable struct NOMBRE_STRUCT
    LISTA_ATRIBUTOS
end
```

Y para crear una variable con nuestro Struct, se escribe:

```julia
ID = NOMBRE_STRUCT(LISTA_VALORES)
```

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

JOLC también tiene la opción de imprimir arreglos y struct. Por ejemplo:

```julia
    a = [0, 1, 2]
    println(a)          # Imprime [0, 1, 2]
    s = Hora(10, 30)
    print(s)            # Imprime Hora(10, 30)
```

### Asignaciones

COLOCAR TEXTO DE ASIGNACIONES

### Llamada a funciones

Una llamada a función es como un desvío en el flujo de la ejecución. En lugar de pasar a la siguiente sentencia, el flujo salta al cuerpo de la función, ejecuta esta y regresa para continuar después de la llamada a la función.

Para llamar a una función se realiza de la siguiente manera:

```julia
NOMBRE_FUNCION(LISTA_PARAMETROS)
```

Cuando se pasa un arreglo o struct como argumento de una función, en realidad se pasa una referencia de este. Por lo que cualquier cambio que se realice al parámetro, se podrá observar después de salir de la función.

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
