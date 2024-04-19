main:-
    read(List),
    read(Num),
    ( Num > 0, Num < 10 ->
      numeroMestre(List, Num, Result),
      write(Result)
    ; write(List)
    ),
    halt.
    
divisor(N, D):- N mod D =:= 0.
ultimoDigito(N, D):- N mod 10 =:= D.

numeroMestre([], _, []):- !.
numeroMestre([H|T], Num, [Hr|Tr]):-
    (divisor(H, Num); ultimoDigito(H, Num)), 
    Hr = -1,
    numeroMestre(T, Num, Tr).
numeroMestre([H|T], Num, [H|Tr]):-
    numeroMestre(T, Num, Tr).