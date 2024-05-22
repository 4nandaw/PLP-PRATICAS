A equipe de desenvolvimento de uma aplicação de análise de dados está trabalhando em uma funcionalidade específica para identificar padrões crescentes em listas de números. Eles precisam de um componente que conte o número de sublistas crescentes em uma lista fornecida.

Crie um programa em Haskell chamada que aceite como entrada uma lista de números inteiros. Esta função deverá contar e retornar o número de sublistas crescentes encontradas na lista.

Uma sublista crescente é definida como uma sequência contínua de números onde cada elemento é estritamente maior que o anterior.

Por exemplo, dada a lista [1, 2, 3, 2, 4, 6, 1, 2, 3], a função deverá identificar as sublistas [1, 2, 3], [2, 4, 6] e [1, 2, 3]. Portanto, o resultado esperado seria 3.

Obs: Considere que um número pode pertencer a apenas uma sublista crescente.



Teste Público:
Entrada:

        [1, 2, 3, 2, 4, 6, 1, 2, 3]

Saída:

       3

