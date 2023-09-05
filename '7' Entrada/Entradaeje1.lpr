program Entradaeje1;
var largo, ancho, area, perimetro: integer;

begin
  write('Ingrese el largo ');
  readln(largo);
  write('Ingrese el ancho ');
  readln(ancho);

  area:= largo * ancho;
  perimetro:= ancho*2 + largo*2;

  writeln('El perimetro es ',perimetro);
  writeln('El area es ',area);
  readln;

end.

