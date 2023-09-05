program numeroRandom;
const MAX_INTENTOS = 10;
var i, numeroGanador, numeroUsuario: byte;
  adivino : boolean;
begin
  randomize;
  numeroGanador:= random(99)*1;

  adivino:= false;

  for i:= MAX_INTENTOS downto 1 do begin
  write('Tienes ',i,' intentos: ');
  readln(numeroUsuario);

  adivino:= (numeroUsuario = numeroGanador);
  if adivino then begin
    writeln('GANASTE');
    break;
  end;
  end;
  if (i=1)and not adivino then begin
    writeln('PERDISTE');
  end;
  readln;
end.

