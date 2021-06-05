list([El|_],El).
list([_|T],El):-list(T,El).
if1(S,A1,B1,A2,B2):-not(list(S,[A1,B1]))->list(S,[A2,B2]),!.
if1(S,A1,B1,_,_):-list(S,[A1,B1]).
if2(S,A1,B1,A2,B2):-list(S,[A1,B1])->not(list(S,[A2,B2])),!.
if2(S,A1,B1,_,_):-not(list(S,[A1,B1])).

pr_students:- Students=[_,_,_],
	
	list(Students,[petr,_]),
	list(Students,[roman,_]),
	list(Students,[sergey,_]),
	list(Students,[_,him]),
	list(Students,[_,fiz]),
	list(Students,[_,mat]),
	if2(Students,petr,mat,sergey,fiz),
	if1(Students,roman,fiz,petr,mat),
	if1(Students,sergey,mat,roman,him),
	list(Students,[roman,Who]),

write(Students), nl,
write(Who), !.