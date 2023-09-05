program forCaseEj;
var a, b, c, d ,e, i ,aux, j: byte;
begin

  // obtenemos los datos necesarios
  write('Ingresa 5 valores enteros: ');
  readln(a,b,c,d,e);

  for i:= 1 to 5 do begin

     case i of
     1: aux:= a;
     2: aux:= b;
     3: aux:= c;
     4: aux:= d;
     5: aux:= e;
     end;

     for j:= 1 to aux do begin
        write('*');
     end;

     writeln;
  end;

  readln;
end.

