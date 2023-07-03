%Grupo 8
fatorial(0, 1). %fatarial basico de 0
fatorial(N, Resultado) :- N > 0,  %evita a execução com N=0
    N1 is N - 1, %atualiza o valor de N
    fatorial(N1, Resultado1), %chama recursivamente a função com valor de N-1
    Resultado is N * Resultado1, %atualiza o resultado do fatorial com base nas recursões
    write('N '= N), writeln(' => Fat '= Resultado), nl. %escreve o resultado de cada chamada

 

fatorial(N) :- fatorial(N, _Resultado). %chamda simplificada