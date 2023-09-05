program convertorCharANumeroEntero;
var
   indice: char;
   numero: integer;

begin
  write('ingresa un numero: ');
  readln(indice);

  if (indice>= '0') and (indice<= '9') then begin
    numero:= ord(indice) - ord('0');
    writeln('El numero ingresado es: ',numero);

  end else begin
    writeln('Error: ingrese un numero.');
  end;

  readln;

end.

