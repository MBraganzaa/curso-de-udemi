program ConstIva;
const iva = 22;

var valor : real;

begin
  write('Ingrese el valor del producto: ');
  readln(valor);
  valor:= valor*iva/100+valor;
  write('El valor con iva es de: ',valor:4:2);
  readln;

end.

