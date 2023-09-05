program archivo01_1_textfile;

uses sysutils;
                // una variable de tipo texto
var archivo01 : TextFile;
    frase : string;

begin
  //creo un enlase de la memoria ram a el disco duro.
  AssignFile(archivo01,'Mi primer archivo.txt');

  if FileExists('Mi primer archivo.txt') then begin
    writeln('El archivo ya existe. Se abrira y se podra modificar.');
    Append(archivo01);
  end else begin
    writeln('El archivo no existe. Se creara uno nuevo');
    Rewrite(archivo01);
  end;

  writeln('Escriba una frase para que se guarde en el archivo.');
  readln(frase);

  writeln(archivo01,frase);

  //cierra el enlase. es una buena practica cerrar el enlase.
  CloseFile(archivo01);
end.

