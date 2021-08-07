println("Funciones nativas aritmeticas");
# log(base, numero)
println(log(2, 4));     # 2.0
println(log(9, 135));   # 2.2324867603589635
# log10()
println(log10(2000));   # 3.3010299956639813
println(log10(512));    # 2.709269960975831
# trigonometricas
println(sin(67/360*2*3.14));    # 0.9202730580752193
println(cos(67/360*2*3.14));    # 0.39127675446016985
println(tan(67/360*2*3.14));    # 2.351974778938468
# sqrt
println(sqrt(2^4));     # 4.0
println(sqrt(1258));    # 35.4682957019364

println("Operaciones con cadenas");
println("para" * "caidismo");   # paracaidismo
println("Holaaa"^5);    # HolaaaHolaaaHolaaaHolaaaHolaaa
println("Hola Mundo!"[begin:5] * "Auxiliar"[1] * "Auxiliar"[2:end]);    # Hola Auxiliar
println(length("Esto no sé cuanto mide"));  # 22
println(uppercase("mayuscula"));    # MAYUSCULA
println(lowercase("MINUSCULA"));    # minuscula

println("Operador ternario");
animal = "Tortuga"
println(animal == "Perro" ? 20 : "No"); # No
