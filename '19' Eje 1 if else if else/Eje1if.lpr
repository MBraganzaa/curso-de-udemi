program Eje1if;
var opcion : char;
    var1, var2, var3 : real;
begin
  writeln('Elige una opcion');
  writeln('1) Calcular perimetro de rectangulo');
  writeln('2) Calcular area de rectangulo');
  writeln('3) Calcular perimetro de circuferencia');
  writeln('4) Calcular area de circuferencia');
  writeln('5) Calcular perimetro de triangulo');
  writeln('6) Calcular area de triangulo');
  writeln('0) Salir');
  writeln;
  write('Opcion: ');
  readln(opcion);
  writeln;

  if opcion = '1' then begin
    write('Ingresa la LARGO: ');
    readln(var1);
    write('Ingresa el ANCHO: ');
    readln(var2);
    writeln('El PERIMETRO es: ',var1*2+var2*2:4:2);
  end else if opcion = '2' then begin
    write('Ingresa el LARGO: ');
    readln(var1);
    write('Ingresa el ANCHO: ');
    readln(var2);
    writeln('El AREA es: ',var1*var2:4:2);
  end else if opcion = '3' then begin
    write('Ingresa el RADIO: ');
    readln(var1);
    writeln('El PERIMETRO es: ',var1*(3.14*2):4:2);
  end else if opcion = '4' then begin
    write('Ingresa el RADIO: ');
    readln(var1);
    writeln('El AREA es: ',var1*var1*3.14:4:2);
  end else if opcion = '5' then begin
    write('Ingresa el LADO 1 del triagunlo: ');
    readln(var1);
    write('Ingresa el LADO 2 del triangulo: ');
    readln(var2);
    write('Ingresa la BASE del triangulo: ');
    readln(var3);
    writeln('El PERIMETRO es: ',var1+var2+var3:4:2);
  end else if opcion = '6' then begin
    write('Ingresa la ALTURA del triangulo: ');
    readln(var1);
    write('Ingresa la BASE del triangulo: ');
    readln(var2);
    writeln('EL AREA es: ',var1*var2/2:4:2);
  end else if opcion = '0' then begin
    writeln('saliendo...');
  end else begin
    writeln('ERROR: la opcion ',opcion,' no es valida...');
  end;

  writeln;
  writeln('precione ENTER para salir...');
  readln;
end.

