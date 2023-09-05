program adivinador2Punto0;
var numeroG, numeroU, i : byte;
  adivino : boolean;
begin
  randomize;
  numeroG:= random(99)+1;
  adivino:= false;

  writeln('Adivinador 2.0 tienes 10 intentos');
  for i:=1 to 10 do begin
      write('Intento ',i,': ');
      readln(numeroU);

      adivino:= (numeroU = numeroG);

      if adivino then begin
        writeln('Adivinaste! el numero ganador era ',numeroG);
        break;
      end else if numeroG < numeroU then begin
        writeln('el numero a adivinar es menor');
      end else if numeroG > numeroU then begin
        writeln('el numero a adivinar es mayor');
      end;
  end;
  if (i=10) and not adivino then begin
        writeln('Perdiste el numero ganador era ',i);
  end;
  readln;
end.

