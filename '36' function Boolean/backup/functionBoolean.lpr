program functionBoolean;

var palabra : string;

function esNumero(valor: string): boolean;
var c : char;
begin
  for c in valor do begin
    if (c<'0') or (c>'9') then begin
      result:= false;

    end;
  end;
  result:= true;
end;

begin
  repeat
    write('INGRESA UN NUMERO: ');
    readln(palabra);
  until esNumero(palabra);

  readln;
end.

