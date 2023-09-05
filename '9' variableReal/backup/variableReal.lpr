program variableReal;
var area, base, altura: real;

begin
  write('Ingrese el valor Base: ');
  readln(base);
  write('Ingrese el valor Altura: ');
  readln(altura);

  area:= base*altura/2;
  writeln('El AREA es: 'area:4:2);
  readln;
end.

