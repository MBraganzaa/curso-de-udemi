program generadorAlAzarDeNumeros;

const
  MAX_NUMERO= 1000;
type
  TArregloNumerico = array[1..100] of integer;
var
  numeros : TArregloNumerico;

{comprueba si el numero creado al azar se repite: si se repite retorna TRUE
si no es asi retorna FALSE}
function verificarNumero(arreglo : TArregloNumerico; n: integer; i, j: byte ): boolean;
var indice: byte;
begin
  for indice:=i to j do begin
     if n = arreglo[indice] then begin
       result:= true;
       exit;
     end;
  end;
  result:= false;
end;

{genera un numero al azar}
procedure generadorAlAzar(var arreglo : TArregloNumerico);
var i: byte;
    n: integer;
begin
  randomize;
  for i:=1 to 100 do begin
  n:= random(MAX_NUMERO)+1;
      while verificarNumero(arreglo,n,1,i-1) do begin
      n:= random(MAX_NUMERO)+1;
      end;
  arreglo[i]:= n;
  end;
end;

{imprime el arreglo}
procedure imprimir(arreglo: TArregloNumerico);
var i: byte;
begin
   for i:=1 to 100 do begin
   write(' ',arreglo[i]);
   end;
end;

begin
  generadorAlAzar(numeros);
  imprimir(numeros);
  readln;
end.

