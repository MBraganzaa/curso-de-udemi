program numerosPares;
var i, numeroInicial, numeroFinal : byte;
begin
  //Aca pedimos los datos al usuario.
  write('Ingresa un numero inicial: ');
  readln(numeroInicial);
  write('Ingresa un numero final: ');
  readln(numeroFinal);

  for i:=numeroInicial to numeroFinal do begin
      if (i mod 2 = 0) then begin
         write(i,' ');
      end;
  end;
  readln;
end.

