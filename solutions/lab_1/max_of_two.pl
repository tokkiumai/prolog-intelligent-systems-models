PREDICATES
  nondeterm max(integer, integer, integer)
 
CLAUSES
  max(X, Y, Z) :- X >= Y.
  max(_, Y, Z).
 
GOAL
  max(1, 2, Z).
