read_str(10,L,L,N,N):-!.
read_str(X,L,CurL,N,CurN):-NewN is CurN+1,append(CurL,[X],NewL),get0(Y),read_str(Y,L,NewL,N,NewN).

read_string(L,N):-nl,write("input string: "),get0(X),read_str(X,L,[],N,0).

write_string([]):-!.
write_string([H|T]):-put(H),write_string(T).

del_abc([],N,N):-!.
del_abc([97,98,99,D|T],L,CurL):-D>=48,D=<57,del_abc([D|T],L,CurL),!.
del_abc([H|T],L,CurL):-append(CurL,[H],NewCurL),del_abc(T,L,NewCurL).

del_abc(L,NewL):-del_abc(L,NewL,[]).

pr18:-	read_string(L,_), del_abc(L,NewL), write("output modified string: "), write_string(NewL).
