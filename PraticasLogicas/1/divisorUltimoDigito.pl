main:-
    read(N),
    read(D),
    (N > 0, D > 0, D < 10 ->
        (divisorEUltimoDigito(N, D) -> 
            write(D), write(" eh ao mesmo tempo divisor e o ultimo digito de "), write(N), write("."), !;
         divisor(N, D) ->
            write(D), write(" eh divisor de "), write(N), write(".");
         ultimoDigito(N, D) ->
            write(D), write(" eh o ultimo digito de "), write(N), write(".")
        )
    ; write("Input invalido.")),
    halt.

divisorEUltimoDigito(N, D):- divisor(N, D), ultimoDigito(N, D).
divisor(N, D):- N mod D =:= 0.
ultimoDigito(N, D):- N mod 10 =:= D.