program functionAreaTriangulo;
var area, largo, ancho: integer;
function areaTriangulo(largo,ancho : integer): integer;
begin
  readln(largo,ancho);
  writeln('LOCAL: ',largo,' ',ancho);
  areaTriangulo:=(largo*ancho);
end;
begin

  area:= areaTriangulo(largo,ancho);
  writeln('GLOBAL: ',largo,' ',ancho);
  writeln('AREA: ',area);
  readln;
end.

