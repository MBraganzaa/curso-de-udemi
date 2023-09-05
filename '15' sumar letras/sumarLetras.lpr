{aplicacion para motras en pantalla en horizontal una palabra con 4 letras.}
program sumarLetras;
var l1, l2, l3, l4: char;

begin
  write('Ingrese una palabra de 4 letras: ');
  read(l1,l2,l3,l4);
  readln;

  write(l1+#13#10+l2+#13#10+l3+#13#10+l4);
  readln;
end.

