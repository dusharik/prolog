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

mult_no_5_up(N,X,M):-N<10, N>=0, N1 is N mod 5, (not(N1 = 0), X is N; X is 1).
mult_no_5_up(N,X,M):-N1 is N div 10, Cur is N mod 10, Cur1 is Cur mod 5, ((not(Cur1 = 0), M is Cur); M is 1), mult_no_5_up(N1,X1,M1), X is M * X1, !.
mult_no_5_up(N,X):-mult_no_5_up(N,X,M).

mult_no_5_down(N,X,Mult):-N<10, N>=1, N1 is N mod 5, (not(N1 = 0), X is Mult*N; X is Mult), !.
mult_no_5_down(N,X,Mult):-N1 is N div 10, M1 is N mod 10, M2 is M1 mod 5, (not(M2 = 0), Mult1 is M1*Mult; Mult1 is Mult), mult_no_5_down(N1,X,Mult1), !. 
mult_no_5_down(N,X):-mult_no_5_down(N,X,1).

nod(X1,X2,N,N1):-0 is X1 mod N1, 0 is X2 mod N1, N is N1.
nod(X1,X2,N,N1):-N2 is N1-1, nod(X1,X2,N,N2).
nod(X1,X2,N):-((X1 > X2, N1 is X2); N1 is X1), nod(X1,X2,N,N1), !.

simple(X,N):-(N = 1, write("Prime number")); ((0 is X mod N, write("Number is not prime"), !); N1 is N-1, simple(X,N1)), !.
simple(X):-N is X-1, simple(X,N).

num_of_divisors(X,Cur,N):-(0 is Cur, write("number of divisors - "), write(N)); ((0 is X mod Cur, N1 is N+1); N1 is N), Cur1 is Cur-1, num_of_divisors(X,Cur1,N1), !.
num_of_divisors(X):-Cur is X, num_of_divisors(X,Cur,0), !.