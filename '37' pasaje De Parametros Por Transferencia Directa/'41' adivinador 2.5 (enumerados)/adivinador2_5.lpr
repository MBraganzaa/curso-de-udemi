program adivinador2_5;

const MAX_NUMERO_FACIL = 15;
      MAX_NUMERO_DIFICIL = 10;
      NUMERO_MAXIMO = 100;

type TDificultad = (FACIL,DIFICIL);

var numeroG, numeroU, i : byte;
    adivino : boolean;
    dificultad : TDificultad;
    maxIntentos : byte;
    leer : char;

begin
  randomize;
  numeroG:= random(NUMERO_MAXIMO)+1;
  adivino:= false;

  writeln('Adivinador 2.5');
  writeln;
  write('Elige la dificultad FACIL(F)/DIFICIL(D) >> ');

  Repeat
       readln(leer);
       if (leer <> 'D') and (leer <> 'F') then
       write('ERROR : Ingrese D o F >> ');
  until (leer = 'D') or (leer = 'F');
  case leer of
  'D': dificultad:=DIFICIL;
  'F': dificultad:=FACIL;
  end;
  case dificultad of
  FACIL: maxIntentos:= MAX_NUMERO_FACIL;
  DIFICIL: maxIntentos:= MAX_NUMERO_DIFICIL;
  end;

  for i:=1 to maxIntentos do begin
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
  if (i = maxIntentos) and not adivino then begin
        writeln('Perdiste el numero ganador era ',numeroG);
  end;
  readln;
end.
