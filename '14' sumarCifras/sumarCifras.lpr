{El siguiente programa desglosara un numero de 4 cifras en sus 4 numeros
distintos, uno por cada cifra y realizara la suma entre ellas}

program sumarCifras;
var numero, c1, c2, c3, c4: integer;

begin
  write('ingresa un numero de 4 cifras: ');
  readln(numero); // Pedimos el numero con 4 cifras

  //Asignamos a cada variable el valor de la cifra que corresponde
  c1:= numero mod 10;
  c2:= (numero mod 100) div 10;
  c3:= (numero mod 1000) div 100;
  c4:= numero div 1000;

  //Mostramos el resultado por la salida estandar.
  write('La suma de cada cifra de ',numero,' es: ',c1+c2+c3+c4);
  readln;
end.

