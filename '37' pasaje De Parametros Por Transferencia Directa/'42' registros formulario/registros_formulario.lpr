program registros_formulario;
const MAX_PERSONAS = 2;
type
     TPersonas = record
          nombre, apellido: string;
          edad : byte;
     end;
     TListaPersonas = array[1..2] of TPersonas;
var
  lista: TListaPersonas;
  i: byte;
procedure imprimirPersona(p: TPersonas);
begin
  writeln;
  writeln('Nombre: '+p.nombre+' '+p.apellido+' Edad: ',p.edad);
end;
procedure obtenerDatos(var p: TPersonas);
begin
  write('Escribe un nombre: ');
  readln(p.nombre);
  write('Escribe un apellido: ');
  readln(p.apellido);
  write('Escribe un edad: ');
  readln(p.edad);
end;
begin
  for i:=1 to MAX_PERSONAS do begin
    obtenerDatos(lista[i]);
  end;
  for i:=1 to MAX_PERSONAS do begin
    imprimirPersona(lista[i]);
  end;
  readln;

end.

