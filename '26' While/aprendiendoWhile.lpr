program aprendiendoWhile;
var opcion: char;
  num1, num2 : real;
  salir: boolean;
begin
  salir:= false;
  while not salir do begin
    writeln('Seleccione una opcion.');
    writeln('1) Calcular el perimetro de un rectangulo');
    writeln('2) Calcular el area de un rectangulo');
    writeln('0) Salir');
    write('opcion: ');
    readln(opcion);
    writeln;

    case opcion of
    '1': begin
      write('Ancho del rectangulo: ');
      readln(num1);
      write('Alto del rectangulo: ');
      readln(num2);
      writeln;
      writeln('El perimetro de un rectangulo: ',(num1*2)+(num2*2):4:2);
      readln;
    end;
    '2': begin
      write('Ancho del rectangulo: ');
      readln(num1);
      write('Alto del rectangulo: ');
      readln(num2);
      writeln;
      writeln('El perimetro de un rectangulo: ',num1*num2:4:2);
      readln;
    end;
    '0': begin
      salir:=true;
    end;
    else begin
      writeln('ERROR: la opcion no es valida');
      writeln;
      end;
    end;
  end;

end.

