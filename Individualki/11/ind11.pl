:- initialization pr.

:- dynamic q1/2.
:- dynamic q2/2.
:- dynamic q3/2.
:- dynamic q4/2.
:- dynamic q5/2.
:- dynamic q6/2.
:- dynamic q7/2.
:- dynamic q8/2.
:- dynamic q9/2.
:- dynamic q10/2.
:- dynamic q11/2.


read_str(A):-get0(X),r_str(X,A,[]).
r_str(10,A,A):-!.
r_str(X,A,B):-append(B,[X],B1),get0(X1),r_str(X1,A,B1).

% 1
q1_r(X,Y):-repeat,(q1(X,Y)->(nl,write(X),nl,write(Y),write("."),
                      retract(q1(X,Y))) ;X=nil,Y=nil).

prQ1Tell:-tell('C:/ind/ind11/q1.txt'),q1_r(X,_),X=nil,told.

prQ1See:-see('C:/ind/ind11/q1.txt'),get0(Sym),readQ1(Sym),seen.

readQ1(-1):-!.
readQ1(_):-read_str(Lang),name(X,Lang),read(Y),asserta(q1(X,Y)),
                get0(Sym),readQ1(Sym).


% 2
q2_r(X,Y):-repeat,(q2(X,Y)->(nl,write(X),nl,write(Y),write("."),
                      retract(q2(X,Y))) ;X=nil,Y=nil).

prQ2Tell:-tell('C:/ind/ind11/q2.txt'),q2_r(X,_),X=nil,told.

prQ2See:-see('C:/ind/ind11/q2.txt'),get0(Sym),readQ2(Sym),seen.

readQ2(-1):-!.
readQ2(_):-read_str(Lang),name(X,Lang),read(Y),asserta(q2(X,Y)),
                get0(Sym),readQ2(Sym).


% 3
q3_r(X,Y):-repeat,(q3(X,Y)->(nl,write(X),nl,write(Y),write("."),
                      retract(q3(X,Y))) ;X=nil,Y=nil).

prQ3Tell:-tell('C:/ind/ind11/q3.txt'),q3_r(X,_),X=nil,told.

prQ3See:-see('C:/ind/ind11/q3.txt'),get0(Sym),readQ3(Sym),seen.

readQ3(-1):-!.
readQ3(_):-read_str(Lang),name(X,Lang),read(Y),asserta(q3(X,Y)),
                get0(Sym),readQ3(Sym).


% 4
q4_r(X,Y):-repeat,(q4(X,Y)->(nl,write(X),nl,write(Y),write("."),
                      retract(q4(X,Y))) ;X=nil,Y=nil).

prQ4Tell:-tell('C:/ind/ind11/q4.txt'),q4_r(X,_),X=nil,told.

prQ4See:-see('C:/ind/ind11/q4.txt'),get0(Sym),readQ4(Sym),seen.

readQ4(-1):-!.
readQ4(_):-read_str(Lang),name(X,Lang),read(Y),asserta(q4(X,Y)),
                get0(Sym),readQ4(Sym).


% 5
q5_r(X,Y):-repeat,(q5(X,Y)->(nl,write(X),nl,write(Y),write("."),
                      retract(q5(X,Y))) ;X=nil,Y=nil).

prQ5Tell:-tell('C:/ind/ind11/q5.txt'),q5_r(X,_),X=nil,told.

prQ5See:-see('C:/ind/ind11/q5.txt'),get0(Sym),readQ5(Sym),seen.

readQ5(-1):-!.
readQ5(_):-read_str(Lang),name(X,Lang),read(Y),asserta(q5(X,Y)),
                get0(Sym),readQ5(Sym).


% 6
q6_r(X,Y):-repeat,(q6(X,Y)->(nl,write(X),nl,write(Y),write("."),
                      retract(q6(X,Y))) ;X=nil,Y=nil).

prQ6Tell:-tell('C:/ind/ind11/q6.txt'),q6_r(X,_),X=nil,told.

prQ6See:-see('C:/ind/ind11/q6.txt'),get0(Sym),readQ6(Sym),seen.

readQ6(-1):-!.
readQ6(_):-read_str(Lang),name(X,Lang),read(Y),asserta(q6(X,Y)),
                get0(Sym),readQ6(Sym).


% 7
q7_r(X,Y):-repeat,(q7(X,Y)->(nl,write(X),nl,write(Y),write("."),
                      retract(q7(X,Y))) ;X=nil,Y=nil).

prQ7Tell:-tell('C:/ind/ind11/q7.txt'),q7_r(X,_),X=nil,told.

prQ7See:-see('C:/ind/ind11/q7.txt'),get0(Sym),readQ7(Sym),seen.

readQ7(-1):-!.
readQ7(_):-read_str(Lang),name(X,Lang),read(Y),asserta(q7(X,Y)),
                get0(Sym),readQ7(Sym).


% 8
q8_r(X,Y):-repeat,(q8(X,Y)->(nl,write(X),nl,write(Y),write("."),
                      retract(q8(X,Y))) ;X=nil,Y=nil).

prQ8Tell:-tell('C:/ind/ind11/q8.txt'),q8_r(X,_),X=nil,told.

prQ8See:-see('C:/ind/ind11/q8.txt'),get0(Sym),readQ8(Sym),seen.

readQ8(-1):-!.
readQ8(_):-read_str(Lang),name(X,Lang),read(Y),asserta(q8(X,Y)),
                get0(Sym),readQ8(Sym).


% 9
q9_r(X,Y):-repeat,(q9(X,Y)->(nl,write(X),nl,write(Y),write("."),
                      retract(q9(X,Y))) ;X=nil,Y=nil).

prQ9Tell:-tell('C:/ind/ind11/q9.txt'),q9_r(X,_),X=nil,told.

prQ9See:-see('C:/ind/ind11/q9.txt'),get0(Sym),readQ9(Sym),seen.

readQ9(-1):-!.
readQ9(_):-read_str(Lang),name(X,Lang),read(Y),asserta(q9(X,Y)),
                get0(Sym),readQ9(Sym).


% 10
q10_r(X,Y):-repeat,(q10(X,Y)->(nl,write(X),nl,write(Y),write("."),
                      retract(q10(X,Y))) ;X=nil,Y=nil).

prQ10Tell:-tell('C:/ind/ind11/q10.txt'),q10_r(X,_),X=nil,told.

prQ10See:-see('C:/ind/ind11/q10.txt'),get0(Sym),readQ10(Sym),seen.

readQ10(-1):-!.
readQ10(_):-read_str(Lang),name(X,Lang),read(Y),asserta(q10(X,Y)),
                get0(Sym),readQ10(Sym).


% 11
q11_r(X,Y):-repeat,(q11(X,Y)->(nl,write(X),nl,write(Y),write("."),
                      retract(q11(X,Y))) ;X=nil,Y=nil).

prQ11Tell:-tell('C:/ind/ind11/q11.txt'),q11_r(X,_),X=nil,told.

prQ11See:-see('C:/ind/ind11/q11.txt'),get0(Sym),readQ11(Sym),seen.

readQ11(-1):-!.
readQ11(_):-read_str(Lang),name(X,Lang),read(Y),asserta(q11(X,Y)),
                get0(Sym),readQ11(Sym).



% Easy life

prSeeAll:-prQ1See,prQ2See,prQ3See,prQ4See,prQ5See,prQ6See,prQ7See,prQ8See,prQ9See,prQ10See,prQ11See.
prTellAll:-prQ1Tell,prQ2Tell,prQ3Tell,prQ4Tell,prQ5Tell,prQ6Tell,prQ7Tell,prQ8Tell,prQ9Tell,prQ10Tell,prQ11Tell.

question1(X):-
	write("The actor was born in 1962 or earlier?"),nl,
	write("1. Yes"),nl,
	write("0. NO"),nl,
	read(X).

question2(X):-
	write("Has acted in over 90 films?"),nl,
	write("1. Yes"),nl,
	write("0. NO"),nl,
	read(X).

question3(X):-
	write("Won the Golden Raspberry Award for Worst Actor?"),nl,
	write("1. Yes"),nl,
	write("0. NO"),nl,
	read(X).

question4(X):-
	write("More than 25 nominations?"),nl,
	write("1. Yes"),nl,
	write("0. NO"),nl,
	read(X).

question5(X):-
	write("More than 1 citizenship?"),nl,
	write("1. Yes"),nl,
	write("0. NO"),nl,
	read(X).

question6(X):-
	write("Born in the USA?"),nl,
	write("1. Yes"),nl,
	write("0. NO"),nl,
	read(X).

question7(X):-
	write("Career start in 1982 or earlier?"),nl,
	write("1. Yes"),nl,
	write("0. NO"),nl,
	read(X).

question8(X):-
	write("Producer?"),nl,
	write("1. Yes"),nl,
	write("0. NO"),nl,
	read(X).

question9(X):-
	write("4 or more awards?"),nl,
	write("1. Yes"),nl,
	write("0. NO"),nl,
	read(X).

question10(X):-
	write("Musician?"),nl,
	write("1. Yes"),nl,
	write("0. NO"),nl,
	read(X).

question11(X):-
	write("Born in winter?"),nl,
	write("1. Yes"),nl,
	write("0. NO"),nl,
	read(X).

pr:- prSeeAll,

     question1(X1),
     question2(X2),
     question3(X3),
     question4(X4),
     question5(X5),
     question6(X6),
     question7(X7),
     question8(X8),
     question9(X9),
     question10(X10),
     question11(X11),

     (q1(X,X1),
     q2(X,X2),
     q3(X,X3),
     q4(X,X4),
     q5(X,X5),
     q6(X,X6),
     q7(X,X7),
     q8(X,X8),
     q9(X,X9),
     q10(X,X10),
     q11(X,X11),
     write("Вы загадали - "),writeln(X),!;newOne(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11)),fail.

newOne(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11):-writeln("I don't know, this is new?"),
    writeln("1 - Yes"),writeln("0 - No"),read(Ans),
    (Ans is 1 ->writeln("Ok, write name:"),read(Name),
     addNewOne(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,Name);writeln("Ok"),fail).

addNewOne(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,Name):-
    append('C:/ind/ind11/q1.txt'),
    nl, write(Name), nl,write(X1),write("."), told,

    append('C:/ind/ind11/q2.txt'),
    nl, write(Name), nl,write(X2),write("."), told,

    append('C:/ind/ind11/q3.txt'),
    nl, write(Name), nl,write(X3),write("."), told,

    append('C:/ind/ind11/q4.txt'),
    nl, write(Name), nl,write(X4),write("."), told,

    append('C:/ind/ind11/q5.txt'),
    nl, write(Name), nl,write(X5),write("."), told,

    append('C:/ind/ind11/q6.txt'),
    nl, write(Name), nl,write(X6),write("."), told,

    append('C:/ind/ind11/q7.txt'),
    nl, write(Name), nl,write(X7),write("."), told,

    append('C:/ind/ind11/q8.txt'),
    nl, write(Name), nl,write(X8),write("."), told,

    append('C:/ind/ind11/q9.txt'),
    nl, write(Name), nl,write(X9),write("."), told,

    append('C:/ind/ind11/q10.txt'),
    nl, write(Name), nl,write(X10),write("."), told,

    append('C:/ind/ind11/q11.txt'),
    nl, write(Name), nl,write(X11),write("."), told.