main:-
    read(L),
    contVogalAList(L, R),
    write(R),
    halt.
    
contVogalAList([], 0):- !.
contVogalAList([Name|T], Q):-
    contVogalAList(T, R),
    contVogalA(Name, NQ),
    Q is NQ + R.
    
contVogalA([], 0):- !.
contVogalA(Name, Q):-
    atom_chars(Name, NL),
    contChars(NL, Q).
    
contChars([], 0):- !.
contChars([H|T], Q):-
    ( H == 'a' -> 
      contChars(T, R),
      Q is R + 1
    ; contChars(T, Q)
    ).