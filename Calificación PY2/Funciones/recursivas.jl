# Serie de Fibonacci
function sumarSerieFibonacciRecursiva(n::Int64)::Int64
    if n > 0
        return sumarSerieFibonacciRecursiva(n - 1) + SerieFibonacciRecursiva(n);
    end;
    return 0;
end;

function SerieFibonacciRecursiva(n::Int64)::Int64
    if (n == 0)
        return 0;
    elseif (n == 1)
        return 1;
    else
        return SerieFibonacciRecursiva(n - 1) + SerieFibonacciRecursiva(n - 2);
    end;
end;

println("Sumar serie de Fibonacci recursiva 10: ", sumarSerieFibonacciRecursiva(10));
println("Sumar serie de Fibonacci recursiva 16: ", sumarSerieFibonacciRecursiva(16));
println("Sumar serie de Fibonacci recursiva 7: ", sumarSerieFibonacciRecursiva(7));

# Multiplicar impares
function multiplicarImpares(n::Int64)::Int64
    if (n == 0)
        return 0;
    elseif (n == 1)
        return 1;
    else
        if (n % 2 == 0)
            return multiplicarImpares(n - 1);
        else
            return multiplicarImpares(n - 2) * n;
        end;
    end;
end;

println("Multiplicar impares hasta 12: ", multiplicarImpares(12));
println("Multiplicar impares hasta 5: ", multiplicarImpares(5));
println("Multiplicar impares hasta 21: ", multiplicarImpares(21));
