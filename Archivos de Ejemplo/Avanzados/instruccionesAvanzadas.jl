function imprimirValor(valor)
    print(valor);
end;

x = ["Hola", " ", "Mundo"];

# Se le aplica la función imprimirValor a todos los elementos del arreglo
imprimirValor.(x);

using Plots;

x = [-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5];
y = sin.(x);

#= 
Plot recibe 3 parámetros. El primero indica el nombre de la gráfica para poder diferenciarlas al
momento de mostrarlas.
Además recibe como parámetros 2 arreglos. El de los valores x y los valores y que se graficarán
y deben de ser del mismo tamaño
=#
plot("Primer Gráfica", x, y)

x = 1:10;       # Se crea un arreglo con los valores de 1 a 10.
y = x.^2;       # También se puede aplicar el operador punto con operaciones aritméticas normales

plot("Segunda Gráfica", x,y);