read_list(N,L):-read_list(N,L,0,[]).
read_list(N,L,N,L):-!.
read_list(N,L,S,CurL):-S1 is S+1, read(X), append(CurL,[X],CurL1), read_list(N,L,S1,CurL1).

write_list([]):-!.
write_list([H|T]):-write(H), write(" "), write_list(T).

sum_list_down(List,Sum):-sum_list_down(List,Sum,0).
sum_list_down([],Sum,Sum):-!.
sum_list_down([H|T],Sum,Cur_Sum):-Cur_Sum1 is Cur_Sum + H, sum_list_down(T,Sum,Cur_Sum1).

write_sum_list_down(N):-read_list(N,L), sum_list_down(L,Sum), write("Sum is "), write(Sum).

sum_list_up([],0):-!.
sum_list_up([H|T],Sum):-sum_list_up(T,Sum1), Sum is Sum1 + H.