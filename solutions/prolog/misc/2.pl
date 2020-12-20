# member(_, [], 0).
# member(H, [H|T], Count) :- 
#   member(H,T, Count1), 
#   Count is Count1 + 1.

# member(H, [_|T], Count) :- member(H, T, Count).

q(_, [], 0).
q(H, [H|Tail], N) :-!, q(H, Tail, N1), N is N1 + 1.
q(X, [_|Tail], N) :- q(X, Tail, N).
 
p([], _, [], []).
p([H|Tail], L, [H|ATail], [N|BTail]) :- 
  not(member(H, Tail)),
  !,
  q(H, L, N),
  p(Tail, L, ATail, BTail).

p([_|Tail], L, A, B) :- p(Tail, L, A, B).
 
main(L, A, B) :- p(L, L, A, B).
