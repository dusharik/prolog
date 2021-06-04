r_str_f(10,A,A,N,N):-!.
r_str_f(X,A,B,N,K):-K1 is K+1,append(B,[X],B1),get0(X1),r_str_f(X1,A,B1,N,K1).
read_str_f(A,N):-get0(X),r_str_f(X,A,[],N,0).

write_str([]):-!.
write_str([H|T]):-put(H),write_str(T).

pr1:-read_str_f(A,X),write_str(A),write(", "),write_str(A),write(", "),write_str(A),write(", "),write(X).
