program numerosSinRepetir;
type
  numeross= array[1..10] of byte;
var
  numeros: numeross;
  i, j, numero: byte;

begin
  randomize;
  for i:=1 to 10 do begin
    numero:= random(10);
    j:=1;
    while (j<i) do begin
      if numeros[j] = numero then begin
         numero:= random(10);
         j:=1;
      end else begin
         j+=1;
      end;//Fin del IF
    end;//Fin del WHILE

    numeros[i]:= numero;
  end;//Fin del FOR

  for i:=1 to 10 do begin
    write(numeros[i],' ');
  end;
readln;
end.

