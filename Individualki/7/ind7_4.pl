reverse(A, Z):-reverse(A,Z,[]).
reverse([],Z,Z).
reverse([H|T],Z,Acc):-reverse(T,Z,[H|Acc]).

read_str(A,N):-get0(X),r_str(X,A,[],N,0).
r_str(10,A,A,N,N):-!.
r_str(X,A,B,N,K):-K1 is K+1,append(B,[X],B1),get0(X1),r_str(X1,A,B1,N,K1).

write3([H1,H2,H3|_]):-put(H1),write(" "),put(H2),write(" "),put(H3),write(" ").

writeFirst([H|T]):-writeFirst(H,T),put(H).
writeFirst(_,[]):-!.
writeFirst(H,[_|T]):-writeFirst(H,T),put(H),write(" ").


pr4:-read_str(A,N),(N>5 -> write3(A),reverse(A,NA),write3(NA);writeFirst(A)).
