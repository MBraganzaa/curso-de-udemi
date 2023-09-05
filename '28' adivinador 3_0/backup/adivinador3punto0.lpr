program adivinador3punto0;
uses math;
var opcion : char;
  adivino, trampa: boolean;
  i, max, min, maxIntentos, numeroPosible: integer;

begin
  {Mostramos la informacion necesaria en este menu al usuario.}

  writeln('intentare adivinar un numero que tu elijas.');
  writeln('Cuando indique un numero tu debarias indicar:');
  writeln('      = si acierto al numero que tu quieres que adivine.');
  writeln('      > si el numero que quieres que adivine es mayor que el numero que mostre');
  writeln('      < si el numero que quieres que adivine es menor que el numero que mostre');
  write('Dime el numero minimo: ');
  readln(min);
  write('Dime el numero maximo: ');
  readln(max);
  writeln;

  {calculamos el numero de intentos que tiene el sistema en adivinar el numero.
   * la mitad del numero entre el maximo y el minimo.}
  maxIntentos:= round(log2(max-min+1))+2;
  i:= 1;

  //mostramos los intentos al usuario.
  writeln('EXELENTE. adivinare tu numero en no mas de ',(maxIntentos-1),' intentos.');
  write('Presiona ENTER cuando quieras comenzar...');
  readln;
  writeln;

  //declaramos las variables boolean.
  adivino:= false;
  trampa:= false;

  while i <> maxIntentos do begin
    numeroPosible:=((max-min) div 2)+min;
    write('Intento ',i,' --> El numero es... ',numeroPosible,': ');
    readln(opcion);
    i:= i+1;

    case opcion of
    '=': begin
      adivino:= true;
      break;
    end;
    '>': begin
      min:= numeroPosible+1;
    end;
    '<': begin
      max:= numeroPosible-1;
    end else begin
      writeln('no es un caracter valido');
      i:=i-1;
  end;
    if (min>max) or (max<min) then begin
      writeln('ESTAS HACIENDO TRAMPA!!!');
      trampa:= true;
      break;
    end;
  end;

  if (i=maxIntentos) and not trampa and not adivino then begin
    writeln('GANASTE! no pude encontrar el numero');
  end else if adivino then begin
    writeln('GANE! muy facil...');
  end;

  readln;
end.

