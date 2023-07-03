%Grupo 1

 

%funcionarios dependentes
fc(1,ana,1000,1).
fc(2,pedro,2000,2).
fc(3,lucas,3000,2).
fc(4,joao,2500,1).
fc(5,gustavo,1500,0).

 

%funcionarios
f(1,ana,1000).
f(2,pedro,2000).
f(3,lucas,3000).
f(4,joao,2500).
f(5,gustavo,1500).

 

%dependentes
d(1,augusto).
d(2,paulo).
d(2,paola).
d(3,luana).
d(3,laura).
d(4,juca).

 

%Seleção pois a consulta apenas seleciona o nome e o salário de um codigo X 
%pertencente a uma unica tabela
fns(X,Y):- f(X,N1,S1), writeln([N1,S1]), f(Y,N2,S2), writeln([N2,S2]).

 

%Relação pois a consulta relaciona a tabela de funcionarios com a tabela de
%depentes para buscar o nome de um funcionário determinado pelo seu código
%e os seus dependentes
fd(X):- f(X,N,_S), writeln(N), d(X,Y),writeln([Y]).

 

%seleção pois apenas verifica quais funcionario possuem o slario dentro da
%da faixa solicitada consultando a tabela funcionarios
ffs(X,Y):- f(_C,N,S), S >=X , S =< Y, writeln([N,S]).

 

%Relação pois seleciona na tabela de dependentes o codigo da pessoa,
%em seguida seleciona na tabela funcionarios o nome respectivo ao codigo
df(X):- d(Y,X), f(Y,N,_S), writeln(N),!.