main:-
    read(N),
    read(D),
    (N > 0, D > 0, D < 10 ->
        (divisor_e_ultimo_digito(N, D) -> 
            write(D), write(" eh ao mesmo tempo divisor e o ultimo digito de "), write(N), write("."), !;
         divisor(N, D) ->
            write(D), write(" eh divisor de "), write(N), write(".");
         ultimo_digito(N, D) ->
            write(D), write(" eh o ultimo digito de "), write(N), write(".")
        )
    ; write("Input invalido.")),
    halt.

divisor_e_ultimo_digito(N, D):- divisor(N, D), ultimo_digito(N, D).
divisor(N, D):- N mod D =:= 0.
ultimo_digito(N, D):- N mod 10 =:= D.