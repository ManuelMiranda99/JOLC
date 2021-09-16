mapas = ["Desierto", "Bosque", "Mar", "Ciudad"];
enemigos = ["Enano", "Troll", "Caballero", "Arquero", "Maquina"];
jugadores = ["Ronald", "Manuel","Jhonatan","Cesar","Pablo"];

score = [
    [
        [
            18,16,20,15,98
        ]
    ],
    [
        [
            25,10,8,45,100
        ]
    ]
];

function insertarValores(array)
    push!(array,[[125,110,18,145,1100]]);
    push!(array,[[56,98,78,190,8200]]);
    for i in 1:4
        for j in 2:5
            push!(array[i],[i+j+34, i+j+56, i+j+76, i+j+20, i+j+50]);
        end;
    end;
end;

function imprimirReporte(value,i,j,k)
    println(mapas[i] * "          " * enemigos[j] * "          " * jugadores[k] * "          " * string(value));    
end;

function imprimirScore(array)
    for i in 1:length(array)
        for j in 1:length(array[i])
            for k in 1:length(array[i][j])
                imprimirReporte(array[i][j][k],i,j,k);
            end;
        end;
    end;
end;

insertarValores(score);
println("Mapa" * "          " * "Enemigo" * "          " * "Jugador" * "          " * "Derrotados");    
imprimirScore(score);