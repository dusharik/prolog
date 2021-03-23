%1
read_list(N,L):-read_list(N,L,0,[]).
read_list(N,L,N,L):-!.
read_list(N,L,S,CurL):-S1 is S+1, read(X), append(CurL,[X],CurL1), read_list(N,L,S1,CurL1).

write_list([]):-!.
write_list([H|T]):-write(H), write(" "), write_list(T).

%2
sum_list_down(List,Sum):-sum_list_down(List,Sum,0).
sum_list_down([],Sum,Sum):-!.
sum_list_down([H|T],Sum,Cur_Sum):-Cur_Sum1 is Cur_Sum + H, sum_list_down(T,Sum,Cur_Sum1).

write_sum_list_down(N):-read_list(N,L), sum_list_down(L,Sum), write("Sum is "), write(Sum).

%3
sum_list_up([],0):-!.
sum_list_up([H|T],Sum):-sum_list_up(T,Sum1), Sum is Sum1 + H.

%4
list_el_numb([H|_],H,0).
list_el_numb([H|T],Elem,Number):-list_el_numb(T,Elem,Number1), Number is Number1 + 1.

%4.1
write_list_el_numb(N,X):-read_list(N,List), ((list_el_numb(List,X,Number), write("Number is "), write(Number)); (write("No item"))), !.

%5
write_list_el_numb_5(N,Number):-((Number < N, read_list(N,List), list_el_numb(List,X,Number), write(X)); write("incorrect"), fail).

%6
min(X,Y,X):-X < Y, !.
min(_,Y,Y):-!.

min_list_up([H],H):-!.
min_list_up([H|T],Min):-min_list_up(T,Min1), min(Min1,H,Min).

%7
min_list_down([H|T],Min):-min_list_down([H|T],H,Min).
min_list_down([],Min,Min):-!.
min_list_down([H|T],Min1,Min):-min(Min1,H,Min2),min_list_down(T,Min2,Min).

%8
write_min_list(N):-
	read_list(N,List),
	min_list_down(List,Min),
	write("Min is "), write(Min).

%9
el_exists([H|_],H):-!.
el_exists([H|T],X):-el_exists(T,X).