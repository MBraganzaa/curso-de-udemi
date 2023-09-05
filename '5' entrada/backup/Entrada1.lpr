program Entrada1;
var nombre: string;
    edad: byte;
    nombrePariente: string;
    edadPariente: byte;
begin
  write('Escribe tu nombre: ');
  readln(nombre);
  write('Escribe tu edad: ');
  readln(edad);
  write('Escribe el nombre de un pariente: ');
  readln(nombrePariente);
  write('escribe la edad de '+nombrePariente+': ');
  readln(edadPariente);
  write(nombre+' tiene ',edad,' años. y '+nombrePariente+' tiene ',edadPariente,' años.');
  readln;
end.

