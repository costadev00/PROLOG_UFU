pertence(A,[A|_]).
pertence(A,[_|T]) :- pertence(A, T).

eh_ultimo(X,[X]).
eh_ultimo(X,[_|T]) :- eh_ultimo(X,T).

tamanho([],0).
tamanho([_|T],Tam):- tamanho(T,Tam1) , Tam is 1+Tam1.