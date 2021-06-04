read_str(10,L,L,N,N):-!.
read_str(X,L,CurL,N,CurN):-NewN is CurN+1,append(CurL,[X],NewL),get0(Y),read_str(Y,L,NewL,N,NewN).

read_string(L,N):-nl,write("input string: "),get0(X),read_str(X,L,[],N,0).

write_string([]):-!.
write_string([H|T]):-put(H),write_string(T).

del_x([],N,N):-!.
del_x([120,97,98,99|T],L,CurL):-del_x([97,98,99|T],L,CurL),!.
del_x([H|T],L,CurL):-append(CurL,[H],NewCurL),del_x(T,L,NewCurL).

del_x(L,NewL):-del_x(L,NewL,[]).

pr17:-	read_string(L,_), del_x(L,NewL), write("output modified string: "), write_string(NewL).
