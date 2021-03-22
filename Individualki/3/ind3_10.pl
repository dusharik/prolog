max(X,Y,X):-X>Y, !.
max(_,Y,Y).

max(X,Y,U,X):-X>=Y,X>=U, !.
max(_,Y,U,Y):-Y>=U, !.
max(_,_,U,U).

fact_up(1,1):-!.
fact_up(N,X):-N1 is N-1, fact_up(N1,X1), X is N*X1, !.

fact_down(1,X,X):-!.
fact_down(N,X,Y):-N1 is N-1, Y1 is Y*N, fact_down(N1, X, Y1).
fact_down(N,X):-fact_down(N,X,1).

fib_up(1,1):-!.
fib_up(2,1):-!.
fib_up(N,X):-N1 is N-1, N2 is N-2, fib_up(N1,X1), fib_up(N2,X2), X is X1+X2.

fib_down(2,X,_,X):-!.
fib_down(N,X,X1,X2):-N1 is N-1, X3 is X1+X2, fib_down(N1,X,X2,X3).
fib_down(N,X):-fib_down(N,X,1,1).

sum_dig(N,N):-N>=0, N<10, !.
sum_dig(N,X):-V is N div 10, P is N mod 10, sum_dig(V,X1), X is P+X1.

sum_dig_down(N,Y,Y):-N=0.
sum_dig_down(N,X,Y):-V is N div 10, P is N mod 10, Y1 is Y + P, sum_dig_down(V,X,Y1).
sum_dig_down(N,X):-sum_dig_down(N,X,0).

min_dig_up(N,N):-N<10, N>=0, !.
min_dig_up(N,X):-N1 is N div 10, X1 is N mod 10, min_dig_up(N1,X2), ((X1 < X2, X is X1); X is X2).

min_dig_down(N,X,M1,M2):-N<10, N>=0, ((N < M1, X is N); X is M1).
min_dig_down(N,X,M1,M2):-N1 is N div 10, M3 is N mod 10, ((M1 < M3, M2 is M1); M2 is M3), min_dig_down(N1,X,M2,M4), !.
min_dig_down(N,X):-M1 is N mod 10, min_dig_down(N,X,M1,M2).