program archivo01_textfile;

uses sysutils;
                // una variable de tipo texto
var archivo01 : TextFile;
    frase, archivoUsuario : string;


begin

  write('Escriba el archivo que desea buscar o se creara uno nuevo: ');
  readln(archivoUsuario);

  //creo un enlase de la memoria ram a el disco duro.
  AssignFile(archivo01,archivoUsuario);

  if not FileExists(archivoUsuario) then begin
      writeln('ERROR EL ARCHIVO NO EXISTE.');
  end else begin
      reset(archivo01);
      while not eof(archivo01) do begin
        readln(archivo01,frase);
        writeln(frase);
      end;

      //cierra el enlase. es una buena practica cerrar el enlase.
      CloseFile(archivo01);
  end;
  readln;



end.

