program calculadora;
var numero1, numero2: real;

begin
   write('Ingrese el primer numero: ');
   readln(numero1);
   write('Ingrese otro numero: ');
   readln(numero2);
   writeln('Suma: ',numero1+numero2:4:2);
   writeln('Resta: ',numero1-numero2:4:2);
   writeln('Multiplicacion: ',numero1*numero2:4:2);
   writeln('Divicion: ',numero1/numero2:4:2);
   writeln('Promedio: ',(numero1+numero2)/2:4:2);
   readln;
end.

