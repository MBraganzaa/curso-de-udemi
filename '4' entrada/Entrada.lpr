program Entrada;
var nombre: string;
    edad: byte;

begin
  write('Escribe tu nombre: ');
  readln(nombre);
  write('Escribe tu edad: ');
  readln(edad);
  write('Hola '+nombre+', tu edad es ',edad,' años.');
  readln;
end.

