male(john).
male(paul).
male(mark).
female(mary).
female(lisa).
female(anna).
parent(john, paul).
parent(mary, paul).
parent(paul, lisa).
parent(paul, mark).
parent(anna, lisa).
father(X,Y) :- male(X), parent(X,Y).
mother(X,Y) :- female(X), parent(X,Y).
sibling(X,Y) :- parent(Z,X), parent(Z,Y), X \= Y.
