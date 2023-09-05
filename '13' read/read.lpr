{es un programa para alimentar monos.
Utilice divicion entera para saber cuantos monos se alimentaron y cuantas
bananas sobran.}

program read;
var cantidadDeBananas, cantidadDeMonos, cociente, resto: integer;

begin
  //Obtengo los datos.
  write('Cantidad de bananas para donar: ');
  readln(cantidadDeBananas);
  write('Cuantos monos quiere alimentar: ');
  readln(cantidadDeMonos);

  //Operaciones matematicas.
  cociente:= cantidadDeBananas div cantidadDeMonos;
  resto:= cantidadDeBananas mod cantidadDeMonos;

  //Mostramos los resultados.
  writeln('Alimento a ',cociente,' monos');
  writeln('sobraron ',resto,' bananas');
  readln;

end.
