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

%10
reverse_list(List,Rev_List):-reverse_list(List,[],Rev_List).
reverse_list([],X,X):-!.
reverse_list([H|T],Cur_List,Rev_List):-reverse_list(T,[H|Cur_List],Rev_List).

%11
p([],[]):-!.
p([],[H|T]):-p([],T).
p([H1|T1],[H|T]):-(H1 =:= H, p(T1,T));(p([H1|T1],T)), !.

%12
del_el([_|T],0,T):-!.
del_el([H|T],N,[H|T1]):-N1 is N-1,del_el(T,N1,T1).

%13
del_els(List,X,List_New):-del_els(List,X,List_New,[]).
del_els([],_,List_New,List_New):-!.
del_els([H|T],X,List_New,List_Cur):-X=:=H, del_els(T,X,List_New,List_Cur), !.
del_els([H|T],X,List_New,List_Cur):-not(X=H), append(List_Cur,[H],List_Cur1), del_els(T,X,List_New,List_Cur1).

%14
no_rep([]):-!.
no_rep([],X):-!.
no_rep([H|T]):-X is H, no_rep(T,X), no_rep(T).
no_rep([H|T],X):-not(H=X), no_rep(T,X).

%15
create_no_rep([],List_New,List_New):-!.
create_no_rep([H|T],List_New1,List_New):-
	(el_exists(T,H),create_no_rep(T,List_New1,List_New));
	(not(el_exists(T,H)), append(List_New1,[H],List_New2), create_no_rep(T,List_New2,List_New)).

%16
n_o_m(List,X,N):-n_o_m(List,X,N,0).
n_o_m([],X,N,N1):-N is N1, !.
n_o_m([H|T],X,N,N1):-(H=X, N2 is N1 + 1, n_o_m(T,X,N,N2));(not(H=X), n_o_m(T,X,N,N1)), !.

%17
list_length([],0):-!.
list_length([H|T],N):-list_length(T,N1), N is N1 + 1.


%18 - 3, 4, 13, 15, 27, 30, 39, 45, 51
%18.3

%Read
global_max(List,N):-g_m(List,N).

%Logic
g_m(List,N):-max(List,Max,_), g_m(List,N,Max), !.

max([],Max,Max):-!.
max([H|T],Max,Max1):-
	((var(Max1), Max2 is H);
	((Max1 < H, Max2 is H);
	(Max2 is Max1))),
	max(T,Max,Max2), !.

g_m([],N,Max):-fail, !.
g_m([H|T],0,H):-!.
g_m([H|T],N,Max):-N1 is N - 1, g_m(T,N1,Max).

%18.4

%Read
demin_ind_list(List):-d_i_list(List).

%Logic
d_i_list(List):-d_i_list(List,ListN_New), reverse_list(ListN_New,Rev_List), write_d_i_list(Rev_List), !.
d_i_list(List,ListN_New):-d_i_list(List,ListN_New,ListN_Cur,List).
d_i_list(List,X,X,[]):-!.
d_i_list(List,ListN_New,ListN_Cur,List_Cur1):-
	min_list_up(List_Cur1,Min),
	list_el_numb(List,Min,N),
	list_el_numb(List_Cur1,Min,N1),
	del_el(List_Cur1,N1,List_Cur2),
	append(ListN_Cur,[N],ListN_Cur1),
	d_i_list(List,ListN_New,ListN_Cur1,List_Cur2), !.

%Out
write_d_i_list(List):-write(List).

%18.13

%Read
min_end(List):-m_e(List).

%Logic
m_e(List):-m_e(List,List_New), write_m_e(List_New), !.
m_e(List,List_New):-min_list_up(List,Min), m_e(List_New,Min,List).
m_e(List_New,Min,[Min|T]):-append([Min],T,List_New), !.
m_e(List_New,Min,[H|T]):-append([H],List_Cur,[H|T]), append(List_Cur,[H],List_Cur1), m_e(List_New,Min,List_Cur1).
	
%Out
write_m_e(List):-write(List).

%18.15
%Read
local_min(List,N):-l_min(List,N).

%Logic
l_min(List,N):-list_el_numb(List,X,N), (l_min(List,N,X), write_l_min(1), !); write_l_min(0), !.
l_min([H|T],0,X):-l_min(T,-1,X),!.
l_min([H],0,X):-!.
l_min([H|T],N,X):-
	((N = 1, !, X < H, N1 is N - 1, l_min(T,N1,X));
	(N = -1, !, X < H, !));(N1 is N - 1, l_min(T,N1,X)).

%Out
write_l_min(X):-(X = 0, write("Elem is not local minimum"));(X = 1, write("Elem is local minimum")).


