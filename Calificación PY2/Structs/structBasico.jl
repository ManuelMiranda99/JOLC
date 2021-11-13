struct Personaje
    nombre:: String;
    color:: String;
end;

struct Juego 
    nombre::String;
    horas::Int64;
end;

struct Compania
    personaje::Personaje;
    juego::Juego;
end;

personajes = ["Mario", "Ezio", "Lara Croft", "Ellie"]::Vector{String};
colores = ["Rojo", "Blanco", "Azul", "Cafe"]::Vector{String};
juegos = ["Mario Kart: Double Dash", "Assassins Creed: Brotherhood", "Tomb Raider", "The last of us"]::Vector{String};

function crear(personaje::Personaje, juego::Juego)
    return Compania(personaje,juego);
end;

function crearPersonaje(nombre::String, color::String)
    return Personaje(nombre,color);
end;

function crearJuego(nombre::String, horas::Int64) 
    return Juego(nombre,horas);
end;

function imprimir(compania::Compania)
    println("Personaje: ", compania.personaje.nombre, "   Color: ", compania.personaje.color);
    println("Juego: ", compania.juego.nombre, "   Horas: ", compania.juego.horas);
end;

function iniciar()
    for i in 1:4
        compania = Compania(Personaje("",""),Juego("",0))::Compania;
        if(i < 5)
            personaje = crearPersonaje(personajes[i], colores[i])::Personaje;
            juego = crearJuego(juegos[i], i)::Juego;
            compania = crear(personaje, juego)::Compania;
        end;
        imprimir(compania);    
    end;
end;

iniciar();