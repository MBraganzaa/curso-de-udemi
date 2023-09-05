program Programa1;
var opcion : char;         // var para la opcion del cliente.
    largo, ancho : real;   // var para la largo y el ancho.
begin
  writeln('Elige una opcion');
  writeln;
  writeln('1) Calcular perimetro');
  writeln('2) Calcular area');
  writeln('0) Salir');
  writeln;
  write('Opcion: ');
  readln(opcion);

  if opcion='1' then begin
    write('Largo= '); // Pedimos los datos al cliente.
    readln(largo);
    write('Ancho= '); // Pedimos los datos al cliente.
    readln(ancho);
  end else if opcion='2' then begin
    write('Largo= '); // Pedimos los datos al cliente.
    readln(largo);
    write('Ancho= '); // Pedimos los datos al cliente.
    readln(ancho);
  end else if opcion='0' then begin
    writeln('Saliendo...');
  end else begin
    writeln('error la opcion ',opcion,' no es valida');
  end;
    readln;
end.

