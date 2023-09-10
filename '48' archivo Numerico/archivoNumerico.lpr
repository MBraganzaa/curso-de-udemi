program archivoNumerico;
uses sysutils;
const MAX_NUM = 1000;
      MAX_CANT = 10;
var archivoNumeros: file of integer;
    numeroAleatorio, numeroLeido : integer;
    i: byte;
begin
  Assign(archivoNumeros,'numeros.dat');
  if FileExists('numeros.dat') then begin
    reset(archivoNumeros);
  end else Rewrite(archivoNumeros);

  writeln('Cantidad de numeros que hay en el archivo : ',FileSize(archivoNumeros));
  writeln('Se van a agregar ',MAX_CANT,' numeros');

  seek(archivoNumeros,FileSize(archivoNumeros));
  randomize;
  for i:=0 to MAX_CANT do begin
    numeroAleatorio:=random(MAX_NUM+1);
    write(archivoNumeros,numeroAleatorio);
  end;

  seek(archivoNumeros,0);
  while not eof(archivoNumeros) do begin
      read(archivoNumeros,numeroLeido);
      writeln(numeroLeido);
  end;
  close(archivoNumeros);
  readln;


end.

