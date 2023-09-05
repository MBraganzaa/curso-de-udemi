program Adivinar_numero;
const MAX_INTENTOS_FACIL = 15;
      MAX_INTENTOS_DIFICIL = 10;
      NUMERO_MAX = 100;
type  TDificultad = (FACIL,DIFICIL);
      TResultado = (ES_MAYOR,ES_MENOR,ES_IGUAL);
      TEstado = (JUGANDO,GANO,PERDIO);
      TJuego = record
        dificultad : TDificultad;
        maxIntentos : byte;
        estado : TEstado;
        intentosActual : byte;
        numeroSecreto : byte;
        resultado : TResultado;
      end;
var juego : TJuego;
    d : char;
    numeroUsuario : byte;
    resultado : TResultado;
procedure iniciarJuego(D : Tdificultad; var j: TJuego);
begin
  j.dificultad := D;
  if D = FACIL then begin
    j.maxIntentos:= MAX_INTENTOS_FACIL;
  end else if D = DIFICIL then begin
    j.MaxIntentos:= MAX_INTENTOS_DIFICIL;
  end;
  randomize;
  j.numeroSecreto:= random(NUMERO_MAX)+1;
  j.intentosActual:= 0;
  j.estado:= JUGANDO;
end;
function evaluarNumero(var j: TJuego; numeroUsuario : byte) : TResultado;
begin
   j.intentosActual+=1;
   if numeroUsuario=j.numeroSecreto then begin
       j.estado:= GANO;
   end else if j.intentosActual = j.maxIntentos then begin
       j.estado:= PERDIO;
   end;

   if numeroUsuario = j.numeroSecreto then begin
          result:= ES_IGUAL;
   end else if numeroUsuario > j.numeroSecreto then begin
          result:= ES_MENOR;
   end else begin
          result:= ES_MAYOR;
   end;
end;

begin
  writeln('Elige una dificultad');
  write('Ingrese [F]FACIL/[D]DIFICIL >> ');
  readln(d);
  while (d <>'D') and (d <>'F') do begin
       write('ERROR: ingrese D o F >> ');
       readln(d);
  end;

  case d of
      'D' : iniciarJuego(DIFICIL,juego);
      'F' : iniciarJuego(FACIL,juego);
  end;

  writeln;
  writeln('Dispones de ', Juego.maxIntentos,' para adivinar.');
  writeln;

  repeat
       write('Intento ',Juego.intentosActual+1,' >> ');
       readln(numeroUsuario);
       if evaluarNumero(juego,numeroUsuario) = ES_MAYOR then begin
            writeln('El numero es mayor');
       end else if evaluarNumero(juego,numeroUsuario) = ES_MENOR then begin
            writeln('El numero es menor');
       end;
  until Juego.estado <> JUGANDO ;

  if Juego.estado = PERDIO then begin
       writeln('PERDISTE el numero a adivinar era ',Juego.numeroSecreto);
  end else begin
       writeln('GANASTE');
  end;
  readln;



end.

