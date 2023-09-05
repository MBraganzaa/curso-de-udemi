program archibo01_textfile;

uses sysutils;
                // una variable de tipo texto
var archivo01 : TextFile;

begin
  //creo un enlase de la memoria ram a el disco duro.
  AssignFile(archivo01,'Mi primer archivo.txt');
  //creo un archibo, si ya existe, lo borra y lo vuelve a crear;
  rewrite(archivo01);

  writeln(archivo01,'Este es mi primer archivo...');
  writeln(archivo01,'Aqui se encuentra mi segunda linea');

  //cierra el enlase. es una buena practica cerrar el enlase.
  CloseFile(archivo01);
end.

