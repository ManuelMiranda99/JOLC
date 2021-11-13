function StringFunction()

    str1 = "Sale Compiladores 2"::String;

    println("FUNCIONES STRING:");
    println("Concatenacion:");
    println(str1 * " C3D - segundo Proyecto");
    println("UpperCase:");
    println(uppercase(str1));
    println("LowerCase:");
    println(lowercase(str1 * " SI SALE"));

    println("Concatenacion + :");
    println("string * string");
    println(str1 * " C3D - segundo Proyecto");
    println("string * numero entero");
    println("entero = " * string(125));
    println("string * numero decimal");
    println("decimal = " * string(45.3246));
    println("decimal = " * string(176/3));

    
end;

function testambito()
    numberstring= string(100) * "Usac"::String;
    stringnumber= "Usac" * string(2500)::String;
    stringstring= "Universidad" * " San Carlos"::String;
    println(numberstring);
    println(stringnumber);
    println(stringstring);
end;

function todas(parametro::String)
    println(uppercase(lowercase(parametro)));
end;

StringFunction();
testambito();
todas("hoy ganO compi2");
println("Repeticion:");
    println("Compi2 "^4);
