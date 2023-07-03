%grupo8
%Grupo 1

 

%membros da família
a(pedro).
b(maria).
c(jessica).
d(lucas).
e(ana).
f(mateus).
g(tiago).
%Genero masculino
masculino(pedro).
masculino(lucas).
masculino(mateus).
masculino(tiago).

 

%Genero feminino
feminino(maria).
feminino(jessica).
feminino(ana).

 

%pais
pai(pedro,tiago).
pai(pedro,jessica).
pai(pedro,lucas).
pai(lucas,mateus).

 

%maes
mae(maria,tiago).
mae(ana,mateus).

 

%para A ser o único pai
paiA(X):- pai(X,_Y),!.

 

%para B ser a única mãe
maeB(X):- mae(X,_Y), !.

 

%para A e D serem os únicos homen
homensAD(X,Y) :- masculino(X), masculino(Y), X \= Y, !.

 

%para C ser a única mulher
mulheresC(X):- feminino(X), c(X) , !.

 

%para G ser o único homen
homensG(X):- masculino(X), g(X), !.

 

%para D ser o único pai
paiD(X):- pai(X,_Y), d(X), !.