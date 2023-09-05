program enumerados;

type TDias = (DOMINGO,LUNES,MARTES,MIERCOLES,JUEVES,VIERNES,SABADO);

var d1,d2,D :Tdias;
  i, maximo : byte;

begin
  // De esta manera hacemos que se muestren los dias de manera ciclica.

  write('INGRESE UN DIA DE LA SEMANA: ');
  readln(d1);
  d2:=d1;
  repeat
    write(d2,' ');
    if d2 = sabado then begin
       d2:= DOMINGO;
    end else
       d2:= succ(d2);
  until d2 = d1;

  // se puede utilizar en un case
  {readln(D);
  Case D of
  domingo: writeln('dia de descanso');
  lunes,martes,miercoles,jueves,viernes: writeln('dia de trabajo');
  sabado: writeln('algunos trabajan y otros no');
  end;}

  // PRED significa predecesor
  {d1:= lunes;
  d2:= pred(d1);
  writeln(d2);}

  // SUCC significa sucesor
  {d1:= lunes;
  d2:= succ(d1);
  writeln(d2);}

  // con esto podemos recorrer y mostrar un type Enumerado.
  {for i:=0 to ord(high(TDias))do begin
     write(TDias(i),' ');
  end;}

  readln;
end.

