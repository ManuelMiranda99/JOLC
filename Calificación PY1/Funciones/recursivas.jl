function ackerman(m::Int64, n::Int64)
    if m == 0
        return n + 1;
    elseif m > 0 && n == 0
        return ackerman(m - 1, 1);
    else
        return ackerman(m - 1, ackerman(m, n - 1));
    end;
end;

function hanoi(discos, origen, auxiliar, destino)
    if discos == 1
        println("Mover de ", origen, " a ", destino);
    else
        hanoi(discos - 1, origen, destino, auxiliar);
        println("Mover de ", origen, " a ", destino);
        hanoi(discos - 1, auxiliar, origen, destino);
    end;
end;

function factorial(num::Int64)
    if num == 1
        return 1;
    else
        return num * factorial(num - 1);
    end;
end;

println(factorial(5));

println(ackerman(3, 5));

hanoi(3, 1, 2, 3);