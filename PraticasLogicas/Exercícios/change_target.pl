change_target([], _, _, []).
change_target([Target|T], Target, New, [New|R]):-
    change_target(T, Target, New, R).
change_target([H|T], Target, New, [H|R]):-
    H \= Target,
    change_target(T, Target, New, R).

main:-
    change_target([9, 9, 8, 7, 5, 9, 0, 1, 2, 9, 3], 9, 0, R),
    write(R),
    halt.