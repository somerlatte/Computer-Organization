1) Potência elétrica é a medida da quantidade de energia elétrica fornecida ou consumida por um circuito elétrico. Pode ser calculada por meio de grandezas como tensão elétrica (V), resistência elétrica (R) e corrente elétrica (I), que se relacionam através, por exemplo, da seguinte equação:

P=V×I

Escreva um programa em assembly RISC-V que, dado qualquer par dessas grandezas, seja capaz de calcular e retornar o valor da terceira grandeza. Considere x10, x11 e x12 como potência (P), tensão (V) e corrente (I), respectivamente, sendo a variável com valor zero aquela que deve ser calculada. Se mais de uma variável tiver valor zero, o programa deve retornar também zero.

2) Considere o seguinte código em C para uma primeira aproximação a uma função que calcula iterativamente o fatorial de um número:
   int fact(int n) {
    int i, res;
    res = 1;
    for (i = 2; i <= n; i++)
        res = res * i;
    return res;
}
Implemente o algoritmo acima em assembly (RISC-V), considerando que o número n está no registrador x10.

3) Se você pedir para alguém que não é familiarizado com algoritmos para ordenar uma sequência de números, há uma alta probabilidade dessa pessoa aplicar o Selection Sort. Isso ocorre porque esse algoritmo possui uma rotina básica muito simples e direta: selecionar (daí o nome Selection Sort) o menor elemento da sequência e colocar esse elemento na primeira posição do array. A ideia é executar várias vezes esses dois passos para ordenar um array. Para ser exato, se executarmos N vezes esses dois passos em um array, controlando os índices em que os passos são executados, o resultado é a ordenação completa do mesmo.

Abaixo, uma possível implementação do selection sort em C:
   int indice_menor = 0;
for (int i = 1; i < v.length; i++) {
    if (v[i] < v[indice_menor])
        índice_menor = i;
}
// coloca o menor na primeira posição
int aux = v[0];
v[0] = v[índice_menor];
v[índice_menor] = aux;

Implemente o selection sort em assembly (RISC-V), considerando que o início do array está em x10 e o tamanho do array está em x11. Para esta atividade, você pode utilizar arrays ou ponteiros.
