program archivo01_1_textfile;

uses sysutils;
                // una variable de tipo texto
var archivo01 : TextFile;
    frase, archivoUsuario : string;


begin

  write('Escriba el archivo que desea buscar o se creara uno nuevo: ');
  readln(archivoUsuario);

  //creo un enlase de la memoria ram a el disco duro.
  AssignFile(archivo01,archivoUsuario);

  if FileExists(archivoUsuario) then begin
    writeln('El archivo <',archivoUsuario,'> ya existe. Se abrira y se podra modificar.');
    Append(archivo01);
  end else begin
    writeln('El archivo <',archivoUsuario,'> no existe. Se creara uno nuevo');
    Rewrite(archivo01);
  end;

  writeln('Escriba una frase para que se guarde en el archivo.');
  readln(frase);

  writeln(archivo01,frase);

  //cierra el enlase. es una buena practica cerrar el enlase.
  CloseFile(archivo01);
end.

