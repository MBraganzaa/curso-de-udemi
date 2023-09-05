program Subprogramas;
var
  nombre, apellido, ocupacion : string;
  edad: byte;

procedure imprimirAsteristicos();
var i: byte;
begin
  for i:=1 to 45 do begin
    write('*');
  end;
  writeln;
end;
begin
  //imprimimos asteristicos
  imprimirAsteristicos();
  writeln('         Aprendiendo subprogramas');
  //imprimimos asteristicos
  imprimirAsteristicos();
  write('Ingresa tu nombre: ');
  readln(nombre);
  write('Ingresa tu apellido: ');
  readln(apellido);
  write('ingresa tu edad: ');
  readln(edad);
  write('Ocupacion: ');
  readln(ocupacion);

  //imprimimos asteristicos
  imprimirAsteristicos();
  writeln;
  //imprimimos asteristicos
  imprimirAsteristicos();

  writeln('FICHA DE '+nombre+' '+apellido);

  //imprimimos asteristicos
  imprimirAsteristicos();

  writeln('NOMBRE: '+nombre+' '+apellido);
  writeln('EDAD: ',edad);
  writeln('OCUPACION: '+ocupacion);

  //imprimimos asteristicos
  imprimirAsteristicos();
  readln;
end.

