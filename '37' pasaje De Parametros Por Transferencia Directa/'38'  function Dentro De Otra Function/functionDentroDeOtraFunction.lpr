program functionDentroDeOtraFunction;

uses sysutils;

var area: integer;

function leerNumero(var valor: string): boolean;
var c : char;
    palabra: string;
begin
 readln(palabra);
 valor:= palabra;
 for c in palabra do begin
   if (c<'0') or (c>'9') then begin
     leerNumero:= false;
     exit;
   end;
end;
   leerNumero:= true;
end;

function calcularArea(): integer;
var largo, ancho: integer;
    letra: string;
begin
  write('Ingresa el largo: ');
  while not leerNumero(letra) do begin
     write('ERROR Escriba un numero: ');
  end;
  largo:= strtoint(letra);

  write('Ingresa el ancho: ');
  while not leerNumero(letra) do begin
     write('ERROR Escriba un numero: ');
    end;
  ancho:= strtoint(letra);

  calcularArea:= largo*ancho;
end;

begin
  area:= calcularArea();
  writeln('El area es: ',area);
  readln;
end.

