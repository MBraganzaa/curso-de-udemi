program read;
var cantidadDeBananas, cantidadDeMonos, cociente, resto: integer;

begin
  write('Ingrese la cantidad de bananas que tiene para donar: ');
  readln(cantidadDeBananas);
  write('Cuantos monos quiere alimentar: ');
  readln(cantidadDeMonos);

  //Operaciones matematicas.
  cociente:= cantidadDeBananas div cantidadDeMonos;
  resto:= cantidadDeBananas mod cantidadDeMonos;

  //Mostramos los resultados.
  writeln('Alimento a ',cociente,' monos');
  writeln('sobraron ',resto,'bananas');
  readln;

end.
