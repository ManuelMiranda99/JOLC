#=
    Dentro del archivo de arreglos se encontrarán todas las instrucciones disponibles
    para los arreglos. Aceptando las siguientes instrucciones:
        acceso a rango o posición
        copia de un arreglo
        push!
        pop!
        length()
        Operador punto
=#

function swap(i::Int64,j::Int64,arr) 
    temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
end;

arreglo = [32, 21, 7, 89, 56, 909, 109, 2, 9, 1, 44, 3, 8200, 11, 8, 10];
copiaArreglo = arreglo[:];

for i in 1:(length(arreglo))

    for j in 1:(length(arreglo) - 1)

        if arreglo[j] > arreglo[j + 1]
            swap(j, j+1, arreglo);
        end;

    end;

end;

println(["O","R","D","E","N","A","D","O"]);
println(arreglo); # [1, 2, 3, 7, 8, 9, 10, 11, 21, 32, 44, 56, 89, 109, 909, 8200]
println(copiaArreglo); # [32, 21, 7, 89, 56, 909, 109, 2, 9, 1, 44, 3, 8200, 11, 8, 10]

println("===============PUNTO===============");
println(arreglo[begin:4].+3); #[4, 5, 6, 10]
println(arreglo[5:8].*5); #[40, 45, 50, 55]
println(arreglo[9:12].^2); #[441, 1024, 1936, 3136]
println(cos.(arreglo[13:end])); #[0.5101770449416689, -0.577002178942952, -0.4715725491514069, 0.9033951202531774]

println("===============PUSH/POP===============");

for i in 1:length(copiaArreglo)
    print(pop!(arreglo)," - "); #8200 - 909 - 109 - 89 - 56 - 44 - 32 - 21 - 11 - 10 - 9 - 8 - 7 - 3 - 2 - 1 -
end;

println("");

for i in 1:length(copiaArreglo)
    push!(arreglo,copiaArreglo[i]);
end;

println(arreglo); #[32, 21, 7, 89, 56, 909, 109, 2, 9, 1, 44, 3, 8200, 11, 8, 10]
println(copiaArreglo); #[32, 21, 7, 89, 56, 909, 109, 2, 9, 1, 44, 3, 8200, 11, 8, 10]



