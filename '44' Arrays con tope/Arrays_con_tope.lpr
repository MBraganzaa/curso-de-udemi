program Arrays_con_tope;
type TArray = array of integer;
var cantidad ,i: integer;
  arrayNumero : TArray;

begin
  randomize;
  write('cuantos numeros quieres generar? >> ');
  readln(cantidad);

  setlength(arrayNumero,cantidad);
  for i:= low(arraynumero) to high(arrayNumero) do begin
      arrayNumero[i]:= random(1000)+1;
  end;
  for i:= low(arraynumero) to high(arrayNumero) do begin
    write(arraynumero[i],' ');
  end;
  readln;
end.

