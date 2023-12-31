program baseDeDatos;
uses SysUtils, CRT;
const NOMBRE_ARCHIVO = ('baseDeDatos.dat');
      OPCION_SALIR = '0';
type
     TGenero = (MASCULINO,FEMENINO,OTRO);
     TPersona = packed record
     nombre , apellido: string[15];
     edad , peso: byte;
     genero : TGenero;
     eliminado : boolean;
     end;
     tBaseDDat = file of TPersona;

var baseDeDat: tbaseDDat;
    registroActual: TPersona;
    opcion: char;
    indice: integer;

{Imprimimos un registro en completo con un indice.}
procedure imprimirRegistros(Indice: integer; const registro: TPersona);
var g: string;
begin

     with registro do begin
     case genero of
       Tgenero.OTRO : g:= 'OTRO';
       Tgenero.FEMENINO : g:= 'FEMENINO';
       Tgenero.MASCULINO : g:= 'MASCULINO';
     end;
     writeln(indice,' ',nombre,' ',apellido,' ',edad,' ',peso,' ',g);
     end;
end;

{Modificamos un registro sobre escribiendo el mismo}
function modificarRegistro(const i : integer; nombre, apellido : string; edad, peso : byte; genero: TGenero; var b: tBaseDDat): boolean;
var nuevoRegistro : TPersona;
begin
     if (i<0) or (i>=FileSize(b)) then begin
       result:=false;
     end else begin
                   seek(b,i);
                   read(b,nuevoRegistro);
                   if nuevoRegistro.eliminado then begin
                      result:=false;
                      exit;
                   end;
                   seek(b,i);
                   nuevoRegistro.nombre:= nombre;
                   nuevoRegistro.apellido:= apellido;
                   nuevoRegistro.edad:= edad;
                   nuevoRegistro.peso:= peso;
                   nuevoRegistro.genero:= genero;
                   write(b,nuevoRegistro);
                   result:= true;
    end;
end;
// con esta funcion eliminamos un registro.
function eliminarRegistro(const i: integer; var b: tBaseDDat): boolean;
var personaLeida: TPersona;
begin
     if (i<0) or (i>=filesize(b)) then begin
     result:= false;
     exit;
     end;
     seek(b,i);
     read(b,personaLeida);
     personaLeida.eliminado:=true;
     seek(b,i);
     write(b,personaLeida);
     result:=true;
end;

{Imprimimos la base de datos completa usando imprimirRegistros}
procedure imprimirBase(var b : tBaseDDat);
var p : TPersona;
begin
     seek(b,0);
     while not eof(b) do begin
       //READ sirve para leer archivos.  los copia en otra var.
       read(b,p);
       //FilePos nos retorna la posicion en la que el registro se encuentra.
       if not p.eliminado then imprimirRegistros(FilePos(b)-1,p);
     end;
end;
begin
  Assign(baseDeDat,NOMBRE_ARCHIVO);
  if FileExists(NOMBRE_ARCHIVO) then begin
    reset(baseDeDat);
  end else Rewrite(baseDeDat);

  repeat
        ClrScr;
        writeln('1) Ver registros');
        writeln('2) Crear registro');
        writeln('3) Modificar un registro');
        writeln('4) Eliminar un registro');
        writeln('0) Salir');
        writeln;
        write('>> ');
        readln(opcion);

        case opcion of
          '1' : begin
                     writeln;
                     imprimirBase(baseDeDat);
                     readln;
          end;
          '2' : begin
                     writeln;
                     write('NOMBRE : ');
                     ReadLn(registroActual.nombre);
                     write('APELLIDO : ');
                     ReadLn(registroActual.apellido);
                     write('EDAD : ');
                     ReadLn(registroActual.edad);
                     write('PESO : ');
                     ReadLn(registroActual.peso);
                     write(Tgenero.MASCULINO,' ',TGenero.FEMENINO,' ',TGenero.OTRO,'. >> ');
                     readln(registroActual.genero);
                     registroActual.eliminado:=false;

                     seek(baseDeDat,FileSize(baseDeDat));
                     write(baseDeDat,registroActual);
          end;
          '3' : begin
                     write('Ingresa el indice a modificar: ');
                     readln(indice);
                     writeln;
                     write('NOMBRE : ');
                     ReadLn(registroActual.nombre);
                     write('APELLIDO : ');
                     ReadLn(registroActual.apellido);
                     write('EDAD : ');
                     ReadLn(registroActual.edad);
                     write('PESO : ');
                     ReadLn(registroActual.peso);
                     write(Tgenero.MASCULINO,' ',TGenero.FEMENINO,' ',TGenero.OTRO,'. >> ');
                     readln(registroActual.genero);

                     if modificarRegistro(indice,registroActual.nombre,registroActual.apellido,registroActual.edad,registroActual.peso,registroActual.genero,baseDeDat) then begin
                         writeln('REGISTRO EXITOSO');
                     end else
                         writeln('NO SE PUDO MODIFICAR EL REGISTRO');
          end;
          '4' : begin
                     write('Ingresa el registro a eliminar : ');
                     readln(indice);

                     if not eliminarRegistro(indice,baseDeDat) then begin
                         writeln;
                         writeln('No se pudo eliminar el registro.');
                     end else begin
                         writeln;
                         writeln('Se elimino correactamente.');
                     end;
                     readln;
          end;
        end;
  until opcion = OPCION_SALIR;

  close(baseDeDat);

end.

