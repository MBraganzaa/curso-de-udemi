program entrada2;
var lado, area, perimetro: integer;

begin
  write('ingrese la medida del lado: ');
  readln(lado);

  perimetro:= lado*4;
  area:= lado*lado;

  writeln('El perimetro es de ',perimetro);
  writeln('El area es de ',area);
  readln;

end.

