program EncontrarNumero;
const
    MAX_LETRAS = 25;
var
    letras: array of char;
    letraU: char;
    i, contador, dimension: byte;

begin
  write('Ingrese la cantidad de letras que tendra tu palabra: ');
  readln(dimension);

  SetLength(letras,dimension);

  writeln('El indice menor es: ',low(letras));
  writeln('El indice mayor es: ',high(letras));

  write('Ingrese una palabra de ',dimension,' letras: ');

  // se recomienda que en el for usar low, high, cuando hacemos un array dinamico.
  for i:=low(letras) to high(letras) do begin
    read(letras[i]);
  end;

  readln;
  contador:= 0;

  write('Ingrese una letra: ');
  readln(letraU);
  for i:=1 to dimension do begin
    if letras[i] = letraU then begin
      contador+=1;
    end;
  end;

  writeln('La letra ',letraU,' se repite ',contador,' veces.');
  readln;
end.

