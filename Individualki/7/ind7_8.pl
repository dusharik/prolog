read_str(A,N):-get0(X),r_str(X,A,[],N,0).
r_str(10,A,A,N,N):-!.
r_str(X,A,B,N,K):-K1 is K+1,append(B,[X],B1),get0(X1),r_str(X1,A,B1,N,K1).

whofirst([H|_],H,_):-!,write("Первый X").
whofirst([H|_],_,H):-!,write("Первый W").
whofirst([],_,_):-!.
whofirst([_|T],X,W):-whofirst(T,X,W).

who([H|_],H):-!.
who([],H):-name(NH,[H]),nl,write(NH),write(" нет в строке"),!.
who([_|T],H):-who(T,H).

pr8:-read_str(A,_),whofirst(A,120,119), who(A,120), who(A,119).
