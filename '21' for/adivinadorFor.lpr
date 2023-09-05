program adivinadorFor;
var numGanador, numUsu, intentos : byte;
begin
  numGanador:= 5;

  for intentos:=1 to 3 do begin
      write('Adivina el numero ganador del 1 al 10: ');
      readln(numUsu);

      if numUsu = numGanador then begin
        writeln('felicidades acertaste!');
        break;
      end;
  end;
  readln;
end.

