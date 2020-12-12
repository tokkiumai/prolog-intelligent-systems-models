PREDICATES
max(integer, integer, integer, integer)

CLAUSES
max(X, Y, U, Z) :- X >= Y, X >= U, !.
max(_, X, Y, Z) :- X >= Y, !.
max(_, _, X, X).

GOAL
max(100, 4, 8, Z)
