program comparaciones;
var v1, v2: integer;

begin
  write('Ingrese dos valores enteros: ');
  readln(v1,v2);

  if v1<v2 then begin
    writeln(v1,' es menor que ',v2);
  end else if v1=v2 then begin
    writeln(v1,' es igual que ',v2);
  end else if v1>v2 then begin
    writeln(v1,' es mayor que ',v2);
  end else begin
    writeln('Error, rescriba los numeros');
  end;

  readln;
end.

