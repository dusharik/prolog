max(X,Y,X):-X>Y, !.
max(_,Y,Y).

max(X,Y,U,X):-X>=Y,X>=U, !.
max(_,Y,U,Y):-Y>=U, !.
max(_,_,U,U).

fact_up(1,1):-!.
fact_up(N,X):-N1 is N-1, fact_up(N1,X1), X is N*X1, !.

