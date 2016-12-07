:- discontiguous male/1, female/1, parent/2.
male(keith).
male(rhonda).
male(cory).
male(daniel).
male(chase).
male(austin).
male(travis).
male(god).
female(grace).
female(megan).
female(cora).
female(iris).
female(god).

parent(keith, cory).
parent(keith, chase).
parent(rhonda, cory).
parent(rhonda, chase).
parent(daniel, travis).
parent(daniel, austin).
parent(daniel, megan).
parent(grace, travis).
parent(grace, austin).
parent(grace, megan).
parent(chase, cora).
parent(megan, cora).
parent(chase, iris).
parent(megan, iris).

relation(X,Y) :-
  ancestor(A, X),
  ancestor(A, Y).

father(X, Y) :-
  male(X),
  parent(X, Y).

father(god, _) :-
  male(god).

mother(X, Y) :-
  female(X),
  parent(X, Y).

son(X, Y) :-
  male(X),
  parent(Y, X).

daughter(X, Y) :-
  female(X),
  parent(Y, X).

grandfather(X, Y) :-
  male(X),
  parent(X, Somebody),
  parent(Somebody, Y).

aunt(X, Y) :-
  female(X),
  sister(X, Mom),
  mother(Mom, Y).

aunt(X, Y) :-
  female(X),
  sister(X, Dad),
  father(Dad, Y).

sister(X, Y) :-
  female(X),
  parent(Par, X),
  parent(Par, Y),
  X \= Y.

uncle(X, Y) :-
  brother(X, Par),
  parent(Par, Y).

cousin(X, Y) :-
  uncle(Unc, X),
  father(Unc, Y).

ancestor(X, Y) :-
  parent(X, Y).

ancestor(X, Y) :-
  parent(X, Somebody),
  ancestor(Somebody, Y).

brother(X, Y) :-
  male(X),
  parent(Somebody, X),
  parent(Somebody, Y),
  X \= Y.
