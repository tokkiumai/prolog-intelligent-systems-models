write_str([]) :- !.

write_str([H|Tail]) :- 
  put(H), 
  write_str(Tail).

write_list_str([]) :- !.
write_list_str([H|T]) :- write_str(H), nl, write_list_str(T).

read_str(A, N, Flag) :- 
  get0(X), 
  r_str(X, A, [], N, 0, Flag).

r_str(-1, A, A, N, N, 1) :- !.
r_str(10, A, A, N, N, 0) :- !.

r_str(X, A, B, N, K, Flag) :- 
  K1 is K+1, 
  append(B, [X], B1), 
  get0(X1), 
  r_str(X1, A, B1, N, K1, Flag).

read_list_str(List) :- 
  read_str(A, N, Flag), 
  read_list_str([A], List, Flag).

read_list_str(List, List, 1) :- !.

read_list_str(Cur_list, List, 0) :- 
  read_str(A, N, Flag), 
  append(Cur_list, [A], C_l), 
  read_list_str(C_l, List, Flag).

pr5_5 :- 
  see('input_3.txt'), 
  read_list_str([H|T]), 
  seen, 
  defact(H, [], '', Res), 
  atomic_list_concat(Res, '', Str), 
  term_string(Term, Str), 
  tell('output.txt'),  
  display(Term), 
  told, 
  see('output.txt'), 
  read_list_str([Head|Tail]), 
  seen, 
  defact(Head, [], '', Result), 
  delete_other(Result, [], Res123), 
  reverse(ListRev, Res123), 
  calculate(ListRev, [], Otvet), 
  write(Otvet).

defact([H|[H1|T]], Lr, K, Result) :- 
  H1 >= 48, 
  H >= 48, 
  char_code(R, H), 
  atom_concat(K, R, K1), 
  defact([H1|T], Lr, K1, Result),
  !.

defact([H|[H1|T]], Lr, K, Result) :- 
  H1 < 48, 
  H >= 48, 
  char_code(R, H), 
  atom_concat(K, R, K1), 
  append(Lr, [K1], Res), 
  defact([H1|T], Res, '', Result), 
  !.

defact([H|T], Lr, K, Result) :- 
  H < 48, 
  char_code(R, H),
  append(Lr, [R], Lr1), 
  defact(T, Lr1, K, Result),
  !. 

defact([H|[]], Lr, K, Result) :- 
  H >= 48, 
  char_code(R, H), 
  atom_concat(K, R, K1), 
  append(Lr, [K1], Result),
  !.

defact([H|[]], Lr, _, Result) :- 
  H < 48, 
  char_code(R, H),  
  append(Lr, [R], Result),
  !.

delete_other([], Res, Res).

delete_other([H|T], List, Res) :- 
  (H = ','; H = ')'; H = '('), 
  delete_other(T, List, Res).

delete_other([H|T], List, Res) :- 
  append(List, [H], Result), 
  delete_other(T, Result, Res).

calculate([], [Stack], Stack).

calculate([+|T], [A, B|St], Res) :- 
  term_string(Term1, A),
  term_string(Term2, B), 
  C is Term2 + Term1, 
  calculate(T, [C|St], Res).

calculate([-|T], [A, B|St], Res) :- 
  term_string(Term1, A),
  term_string(Term2, B), 
  C is Term1 - Term2, 
  calculate(T, [C|St], Res).

calculate([/|T], [A, B|St], Res) :- 
  term_string(Term1, A),
  term_string(Term2, B), 
  C is Term1 / Term2, 
  calculate(T, [C|St], Res).

calculate([*|T], [A, B|St], Res) :- 
  term_string(Term1, A),
  term_string(Term2, B), 
  C is Term2 * Term1, 
  calculate(T, [C|St], Res).

calculate([H|T], Stack, Res) :- calculate(T, [H|Stack], Res).
