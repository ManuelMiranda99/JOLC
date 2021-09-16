struct Actor
    nombre:: String;
    edad:: Int64;
end;

struct Pelicula 
    nombre::String;
    posicion::Int64;
end;

struct Contrato
    actor::Actor;
    pelicula::Pelicula;
end;

actores = ["Elizabeth Olsen", "Adam Sandler", "Christian Bale", "Jennifer Aniston"];
peliculas = ["Avengers: Age of Ultron", "Mr. Deeds", "Batman: The Dark Knight", "Marley & Me"];

function contratar(actor::Actor, pelicula::Pelicula)
    return Contrato(actor,pelicula);
end;

function crearActor(nombre::String, edad::Int64)
    return Actor(nombre,edad);
end;

function crearPelicula(nombre::String, posicion::Int64) 
    return Pelicula(nombre,posicion);
end;

function imprimir(contrato::Contrato)
    println("Actor: ", contrato.actor.nombre, "   Edad: ", contrato.actor.edad);
    println("Pelicula: ", contrato.pelicula.nombre, "   Genero: ", contrato.pelicula.posicion);
end;

function contratos()
    for i in 1:(1*1+2)
        contrato = Contrato(Actor("",0),Pelicula("",0))::Contrato;
        if(i < 4)
            actor = crearActor(actores[i], i+38)::Actor;
            pelicula = crearPelicula(peliculas[i], i)::Pelicula;
            contrato = contratar(actor, pelicula);
        end;
        imprimir(contrato);    
    end;
end;

contratos();