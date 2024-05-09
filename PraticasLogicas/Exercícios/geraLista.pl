geraLista(Sup, Inf, _):- Sup < Inf, write("Não existel"), !.
geraLista(N, N, [N]).
geraLista(Sup, Inf, [Sup|T]):- NovoSup is Sup - 1, geraLista(NovoSup, Inf, T).

main:-
    geraLista(9, 3, R),
    write(R), halt.