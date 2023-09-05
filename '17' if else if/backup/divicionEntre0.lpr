program divicionEntre0;
var num1, num2 : integer;

begin
  // Pedimos al usuario los datos para hacer la divicion.
  write('Ingrese dos numeros para dividir: ');
  readln(num1,num2);

  // Ponemos una condicion: si num2 es igual que 0... "error".
  if num2 <= 0 then begin
    writeln('ERROR: El numero 2 debe ser positivo y mayor que 0');
  end else begin
    writeln(num1,' dividido ',num2,' : ',(num1/num2):4:2);
  end;

  readln;


end.

