read_str(10,L,L,N,N):-!.
read_str(X,L,CurL,N,CurN):-NewN is CurN+1,append(CurL,[X],NewL),get0(Y),read_str(Y,L,NewL,N,NewN).

read_string(L,N):-nl,write("input string: "),get0(X),read_str(X,L,[],N,0).

find_num([],0):-!.
find_num([97,98,97|T],N):-find_num(T,CurN),N is CurN+1,!.
find_num([_|T],N):-find_num(T,N),!.
find_num(L,N):-find_num(L,N).

pr19:-	read_string(L,_), find_num(L,N), write("number of occurrences 'aba': "), write(N).
