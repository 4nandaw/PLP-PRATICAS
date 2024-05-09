main:-
    consolida([[1, 2, 3], [4, 5], [6, 7, 8]], R),
    write(R), halt.

consolida([], []).
consolida([H|[]], H).
consolida([H|T], R):- consolida(T, RT), append(H, RT, R).