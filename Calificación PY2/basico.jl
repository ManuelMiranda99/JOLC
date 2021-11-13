# Declaración de Variables
var1 = 0::Int64;
var2 = 0::Int64;
var3 = 0::Int64;

string1 = ""::String;
string2 = ""::String;

bool1 = false::Bool;
bool2 = false::Bool;
bool3 = false::Bool;

# Println y Print
println("Verificando valores variables");
print(var1, " ", var2, " ", var3);
println("");
print(string1, " ", string2);
println("");
print(bool1, " ", bool2, " ", bool3);
println("");

# Asignación de Variables y Operaciones Arítmeticas, no potencia
var1 = 41 + 150 - 22 * 12 / 3 + ((125 % 5) * (5 + 2 - (5 * 2)));
var2 = (var1 + var1) - var1 * 2 + 11 % (12 + -10) + 125 / 25;

# Asignación de Variables y Potencia
var3 = (var1 ^ 0) + 125 - (var2) + (125 - 5^3);
println(var1, " ", var2, " ", var3);

# Asignación de Variables y Operaciones Relacionaless
bool1 = ((var1 + 125 / 5 * 3 - 1) > ((var2 ^ 2) + (var3 - 125) * (125 - 5^3)));
bool2 = ((var1 + 125 / 5 * 3 - 1) < ((var3 + 100 / 5) * (var2 - 10)));
println(bool1, " ", bool2);

# Asignación de Variables y Operaciones Lógicas (Corto Circuito)
bool3 = (var1 >= 120 || var2 <= 10) && (var3 > 125 || var3 < 10) || (var1 == 120 && 120 != var2);
println(bool3);
bool3 = 100 == 100 && 100 != 100 || 100 == 100 && 100 == 100;
println(bool3);

string1 = "Hola";
string2 = "Mundo";

println(string1, " ", string2);