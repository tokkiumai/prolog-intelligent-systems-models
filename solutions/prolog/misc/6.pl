%start(6,[(1/2),(1/3), (2/3), (2/4), (3/5), (4/5),(4/6)]).

vertexCover(N, L1, M, L2) :- 
  numlist(1, N, L),
  comb(M, L, L2), 
  covers(L2, L1),
  !.

covers(_, []).

covers(L, [H|T]) :- 
  isIn(L, H), 
  covers(L, T).

isIn([A|T], (X/Y)) :- 
  ((A = X; A = Y) -> true;
  isIn(T, (X/Y))).

comb(0, _, []).

comb(N, [X|T], [X|Comb]) :- 
  N>0, 
  N1 is N-1, 
  comb(N1, T, Comb).

comb(N, [_|T], Comb) :- 
  N > 0, 
  comb(N, T, Comb).

start(N, L1) :- start(N, L1, [], 1).
start(N, L1, [], M) :- 
  ((vertexCover(N, L1, M, L2), 
  write(L2));
  (M1 is M+1, 
  start(N, L1, L2, M1))),
  !.
