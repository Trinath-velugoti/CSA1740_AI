% Facts: Defining family relationships

male(john).
male(michael).
male(david).
male(alex).
male(james).

female(susan).
female(linda).
female(emily).
female(sophia).
female(anna).

parent(john, michael).
parent(john, linda).
parent(susan, michael).
parent(susan, linda).
parent(michael, david).
parent(michael, emily).
parent(linda, sophia).
parent(linda, alex).
parent(david, james).
parent(anna, james).

% Rules: Defining relationships

father(X, Y) :-
    parent(X, Y),
    male(X).

mother(X, Y) :-
    parent(X, Y),
    female(X).

sibling(X, Y) :-
    parent(P, X),
    parent(P, Y),
    X \= Y.

grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).

grandfather(X, Y) :-
    grandparent(X, Y),
    male(X).

grandmother(X, Y) :-
    grandparent(X, Y),
    female(X).

uncle(X, Y) :-
    parent(P, Y),
    sibling(X, P),
    male(X).

aunt(X, Y) :-
    parent(P, Y),
    sibling(X, P),
    female(X).

cousin(X, Y) :-
    parent(P1, X),
    parent(P2, Y),
    sibling(P1, P2).
