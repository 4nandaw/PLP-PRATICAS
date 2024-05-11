elementos_unicos([], [], _).
elementos_unicos(L1, L2, R):-
    unir(L1, L2, L),
    aux_elementos_unicos(L, R).

unir([], L, L).
unir([H|T], L2, [H|R]):-
    \+ member(H, L2),
    unir(T, L2, R).
unir([_|T], L2, R):-
    unir(T, L2, R).

aux_elementos_unicos([], []).
aux_elementos_unicos([H|T], R):-
    member(H, T),
    aux_elementos_unicos(T, R).
aux_elementos_unicos([H|T], [H|R]):-
    \+ member(H, T),
    aux_elementos_unicos(T, R).

main:-
    elementos_unicos([1, 1, 1], [1, 2, 3], R),
    write(R),
    halt.