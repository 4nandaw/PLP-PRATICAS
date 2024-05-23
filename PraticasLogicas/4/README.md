Escreva um programa que recebe dois inputs: uma lista de inteiros e um "número mestre", um inteiro entre 1 e 9. 

Como retorno, imprima a lista, mas com todo número "compatível" com o número mestre substituído por -1. 

Um número é "compatível" com o número mestre, se e somente se, ele é divísivel pelo número mestre OU o seu último dígito é igual ao número mestre.

OBS: caso o número mestre seja inválido (<= 0 ou >= 10), a lista original deve ser retornada.



ATENÇÃO: Você deve obrigatoriamente criar a regra de partida "main".


Testes Públicos:

    Entrada:

        main.

        [2, 88, 33, 39, 92, 13, 27, 53, 97, 70, 37].
        
        7.


    Saida:

        [2, 88, 33, 39, 92, 13, -1, 53, -1, -1, -1]
