main:-
    merge([0, 2, 4], [1, 3, 5], L),
    write(L), halt.

merge([], [], []).
merge([H|T], [], [H|T]).
merge([], [H|T], [H|T]).
merge([H1|T1], [H2|T2], [H1|T]):- H1 =< H2, merge(T1, [H2|T2], T).
merge([H1|T1], [H2|T2], [H2|T]):- H2 < H1, merge([H1|T1], T2, T).