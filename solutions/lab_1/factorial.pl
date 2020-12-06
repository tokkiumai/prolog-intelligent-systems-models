PREDICATES
  nontedeterm factorial(integer, integer)

CLAUSES
  factorial(1, 1) :- !.
  factorial(N, X) :- N1 = N - 1,
  factorial(N1, X1), 
  X = X1 * N.

GOAL
  factorial(1, 5)
