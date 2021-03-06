man(maxim).
man(kirill).
man(sergey).
man(ivan).
man(nikolas).
man(arseny).
man(dmitry).
man(jack).
man(andrey).

woman(ksenia).
woman(daria).
woman(maria).
woman(jasmin).
woman(alina).
woman(polina).
woman(victoria).
woman(elisaveta).
woman(kristina).

parent(maxim,kirill).
parent(maxim,maria).
parent(maxim,ivan).
parent(maxim,alina).

parent(ksenia,kirill).
parent(ksenia,maria).
parent(ksenia,ivan).
parent(ksenia,alina).

parent(kirill,arseny).
parent(kirill,dmitry).
parent(daria,arseny).
parent(daria,dmitry).

parent(sergey,jack).
parent(sergey,polina).
parent(maria,jack).
parent(maria,polina).

parent(ivan,victoria).
parent(ivan,elisaveta).
parent(jasmin,victoria).
parent(jasmin,elisaveta).

parent(nikolas,kristina).
parent(nikolas,andrey).
parent(alina,kristina).
parent(alina,andrey).

men(X):-man(X), write(X), write(", "), fail.
women(X):-woman(X), write(X), write(", "), fail.

children(X):-parent(X,Y), write(Y), write(", "), fail.

mother(X,Y):-woman(X),parent(X,Y).
mother(X):-parent(Y,X), woman(Y), write(Y), fail.

daughter(X,Y):-parent(Y,X), woman(X).
daughter(X):-parent(X,Y), woman(Y), write(Y), write(", "), fail.

brother(X,Y):- not(X=Y), parent(Z,X), parent(Z,Y), man(X).
brothers(X):-parent(Y,X), parent(Y,Z), not(X=Z), man(Z), man(Y), write(Z), write(", "), fail.

wife(X,Y):-woman(X), man(Y), parent(X,Z), parent(Y,Z).
wife(X):-man(X), parent(X,Z), parent(Y,Z), woman(Y), write(Y),!.
