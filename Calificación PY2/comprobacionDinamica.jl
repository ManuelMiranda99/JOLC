function imprimirArreglo(arreglo::Vector{Int64})
    for item in arreglo
        println(item);
    end
end;

function imprimirArregloMal(arreglo::Vector{Int64})
    counter = 1
    for i in 1:(length(arreglo) + 1)
        println(arreglo[i]);
    end
end;

# Indice de arreglo fuera de limites
arreglo = [10, 11, 12, 32, 10, 45]::Vector{Int64};
imprimirArreglo(arreglo);
println("-------------------");
imprimirArregloMal(arreglo);

println("-------------------");
# Division por 0
var1 = 10 + 75 * (20 / (10 - 10));
println(var1);
var1 = 10 / 0;
println(var1);