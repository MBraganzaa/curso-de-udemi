program convertorStrANumeroEntero;
uses
  SysUtils;
var
   error, soloNumeros : boolean;
   c: char;
   numero: integer;
   posibleNumero: string;

begin
  soloNumeros:= true;

  repeat
    // declaramos las variables
    error:= false;
    posibleNumero:='';

    while not eoln and soloNumeros do begin
    read(c);
    soloNumeros:= (c >= '0') and (c <= '9');

        if soloNumeros then begin
          posibleNumero+=c;
        end;//fin del if --> true.
    end;//fin del while

        if not soloNumeros then begin
          readln;
          soloNumeros:= true;
          write('ERROR: Escriba solo numeros: ');
          error:= true;
         end;//fin del if --> false.

  until soloNumeros and not error;//fin del repeat

  readln;
  numero:= StrToInt(posibleNumero);
  write('el numero es: ',numero);
  readln;

end.

