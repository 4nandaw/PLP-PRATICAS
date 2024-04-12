main:-
    read(N),
    quadrados(N,1),
    halt.
    
quadrados(N, I):-
    (I =< N ->  
        Q is I * I,
        write(Q), write("\n"),
        M is I + 1,
        quadrados(N, M)
    ),
    halt.