mutable struct Persona
    nombre::String;
    edad::Int64;
    numeroFamiliares::Int64;
end;

function RegistrarPersona(nombre::String, edad::Int64, numeroFamiliares::Int64)::Persona;
    return Persona(nombre, edad, numeroFamiliares);
end;

function AgregarFamiliar(persona::Persona)
    persona.numeroFamiliares = persona.numeroFamiliares + 1;
end;

function ImprimirDatosPersona(persona::Persona)
    println("Nombre: ", persona.nombre);
    println("Edad: ", persona.edad);
    println("Numero de familiares: ", persona.numeroFamiliares);
end;

manuel = RegistrarPersona("Manuel", 22, 4);
ImprimirDatosPersona(manuel);
AgregarFamiliar(manuel);
ImprimirDatosPersona(manuel);

struct Cartelera
    peliculas::Vector{String};
end;

cinepolis = Cartelera(["El Padrino", "El Padrino 2", "El Padrino 3"]);
for pelicula in cinepolis.peliculas
    println(pelicula);
end;