#=
    En el archivo de structs se mostrará una estructura de datos simple.
    Una lista simple de preferencia.
=#
mutable struct Node
    value::Int64;
    next;
end;

mutable struct List
    first;
end;

function insertFirst(list::List, value)
    aux = list.first;
    newNode = Node(value, aux);
    list.first = newNode;
end;

function insertLast(list::List, value)
    aux = list.first;
    while aux.next != nothing
        aux = aux.next;
    end;
    newNode = Node(value, nothing)
    aux.next = newNode
end;

function printList(list::List)
    aux = list.first;
    while(aux != nothing)
        if aux.next == nothing
            println(aux.value);
        else
            print("$(aux.value)->");
        end;
        aux = aux.next;
    end;
end;

lista = List(nothing);
insertFirst(lista, 5);
insertFirst(lista, 4);
insertFirst(lista, 3);
insertFirst(lista, 2);

insertLast(lista, 10);
insertLast(lista, 20);
insertLast(lista, 30);
insertLast(lista, 40);

println("---IMPRIMIR LISTA---");
printList(lista);
println("---FIN IMPRIMIR---");