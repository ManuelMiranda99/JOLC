println("=======================================================================");
println("==========================FUNCIONES Y RETURN===========================");
println("=======================================================================");
function potenciaNativa(base, exponente)
    resultado = base;
    while exponente > 1
        resultado = resultado * base;
        exponente = exponente - 1;
    end;
    return resultado;
end;

println(potenciaNativa(5, 7));
println(potenciaNativa(2, 2));
println(potenciaNativa(4, 2));

function sumarTodo(num1, num2)
    result = 0;
    if num1 < 0 || num2 < 0
        return -1;
    end;

    while num1 > 0 || num2 > 0
        result = result + (num1 + num2);
        num1 = num1 - 1;
        num2 = num2 - 1;
    end;
    return result;
end;

println(sumarTodo(5, 4));
println(sumarTodo(-1, -5));
println(sumarTodo(7, 7));