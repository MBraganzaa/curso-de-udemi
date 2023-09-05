program AdivinadorArreglo;
type
  numeros= array[1..10]of byte;
var
   i, numero : byte;
   miArreglo: numeros;

begin
  randomize;
  writeln('Adivina un numero del 1 al 30');
  for i:=1 to 10 do begin
    miArreglo[i]:= random(31);
  end;

  writeln;
  write('Escribe un numero entre esos valores: ');
  readln(numero);

  for i:=1 to 10 do begin
    if numero = miArreglo[i] then begin
      writeln('Adivinaste, el numero ',numero,' se encuentra en la posicion ',i);
    end;
  end;

  writeln;
  for i:=1 to 10 do begin
    write(miArreglo[i],' ');
  end;
  readln;


end.

