start(A, B) :- rec(2, A, 2, B, 0).

rec(A, A, B, B, Res) :- write(Res), !.
rec(A, A, _, _, Res) :- write(Res), !.

rec(X, A, B, B, C) :- 
  X1 is X + 1, 
  rec(X1, A, 2, B, C).

rec(X, A, Y, B, C) :- 
  Res is X ^ Y, 
  X1 is X + 1, 
  count(X1, A, 2, B, Res, Count), 
  C1 is C + Count, 
  Y1 is Y + 1, 
  rec(X, A, Y1, B, C1).

count(A, A, _, _, _, C) :- C is 1, !.
count(X, A, Y, Y, Res, C) :-
  X1 is X + 1,
  count(X1, A, 2, Y, Res, C), 
  !.

count(X, A, Y, B, Res, C) :-
  not(Res =:= X ^ Y),
  Y1 is Y + 1,
  count(X, A, Y1, B, Res, C).

count(X, A, Y, B, Res, C) :-
  Res =:= X ^ Y,
  C is 0, 
  !.
