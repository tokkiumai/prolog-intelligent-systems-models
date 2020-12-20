in_list([E1|_], E1).
in_list([_|T], E1) :- in_list(T, E1).

pr_teachers :- 
  Teachers = [_, _, _],
  in_list(Teachers, [tokarev, _, _]),
  in_list(Teachers, [_, biolog, _]),
  in_list(Teachers, [_, franc, _]),
  in_list(Teachers, [morozov, _, _]),
  in_list(Teachers, [_, _, mat]),
  in_list(Teachers, [_, _, angl]),
  in_list(Teachers, [vasilev, _, _]),
  (in_list(Teachers, [_, geo, _]);
  in_list(Teachers, [_, _, geo])),
  (in_list(Teachers, [_, _, hist]);
  in_list(Teachers, [_, hist, _])),
  not(in_list(Teachers, [morozov, _, mat])),
  not(in_list(Teachers, [morozov, biolog, _])),
  not(in_list(Teachers, [_, biolog, mat])),
  not(in_list(Teachers, [tokarev, biolog, _])),
  not(in_list(Teachers, [tokarev, franc, _])),     
  write(Teachers).

pr_corona :- 
  Corona=[_, _, _, _],
  in_list(Corona, [_, italy, _, pohoroni]),
  in_list(Corona, [_, france, _, svadba]),
  in_list(Corona, [_, america, 1, _]),
  in_list(Corona, [progger ,_ ,_ , conf]),
  in_list(Corona, [chinusha, _, 45, _]),
  in_list(Corona, [_, kitai, _, otdih]),
  in_list(Corona, [_, france, 15, _]),
  in_list(Corona, [bankir, _, 6, _]),

  (in_list(Corona, [blogger, italy, _, _]);
    in_list(Corona, [blogger, france, _, _]);
    in_list(Corona, [blogger, america, _, _])),
  (in_list(Corona, [chinusha, italy, _, _]);
  in_list(Corona, [chinusha, france, _, _]);
  in_list(Corona, [chinusha, america, _, _])),
  write(Corona).

# next_gnome(A, B, [C]) :- fail.
# next_gnome(A, B, [A|[B|T]]).

# next_gnome(A, B, [H|T]) :- next_gnome(A, B, T).

# sprava(A, B, [C]) :- fail.

# sprava(A, B, [A|T]) :- in_list(B, T).

# sprava(A, B, [H|T]) :- sprava(A, B, T).

# pr_gnome :- 
#   Gnome = [[_ ,_ ,_ , 80], [_, _, _ , 131], [_, _, _, 159], [_, _, _, 176], [_, _, _, 202]],
#   next_gnome([_, tbur, _, _], [brikli, _, _, _], Gnome),
#   next_gnome([_, _, saphire, _], [_, kail, _, _], Gnome),
#   next_gnome([zvyakli, _, _, _], [brikli, _, agat, _], Gnome),
#   next_gnome([_, kirka, _, _], [kvakli, _, _, _], Gnome),
#   next_gnome([kvakli, _, _, _], [_, molotok, almaz, _], Gnome),
#   sprava([brikli, _, _, _], [_, _, izumrud, _], Gnome),
#   sprava([figli, _, _, _], [_, _, izumrud, _], Gnome),
#   in_list(Gnome, [drihly, _, _, _]),
#   in_list(Gnome, [_, _, almaz, 159]),
#   in_list(Gnome, [_, zastup, _, _]),
#   in_list(Gnome, [_, _, ruby,_]),
#   in_list(Gnome, [_, _, izumrud, _]),
#   not(in_list(Gnome, [figli, _, _, 80])),
#   not(in_list(Gnome, [zvyakli, _, saphire, _])),
#   write(Gnome).

# name1("Tomas", "James Tomas").
# name1("Tomas", "Tomas Gerbert").
# name1("Gerbert", "Tomas Gerbert").
# name1("Gerbert", "Gerbert Frensis").
# name1("Frensis", "Gerbert Frensis").
# name1("Frensis", "Frensis James").
# name1("James", "Frensis James").
# name1("James", "James Tomas").

# member(P, [P|_]) :- !.
# member(P, [_|T]) :- member(P, T).

# stronger(P1, P2, [P1|T]) :- member(P2, T), !.
# stronger(P1, P2, [_|T]) :- stronger(P1, P2, T).

# insert_evry_position(X, [X|T], T).
# insert_evry_position(X, [H|T], [H|S]) :- insert_evry_position(X, T, S).

# permutation([], []).
# permutation([H|T], R):-
#   permutation(T, X), 
#   insert_evry_position(H, R, X).

# solve(L):-
#   permutation(["James Tomas", "Tomas Gerbert", "Gerbert Frensis", "Frensis James"], L),
#   name1("Tomas", A0),
#   name1("Gerbert", B0),
#   stronger(B0, A0, L),
#   name1("Frensis", C0),
#   stronger(C0, B0, L),
#   name1("Frensis", C1),
#   name1("Tomas", A1),
#   name1("Gerbert", B1),
#   stronger(A1, C1, L),
#   stronger(B1, C1, L),
#   name1("Gerbert", B2),
#   name1("James", D0),
#   stronger(D0, B2, L),
#   name1("Frensis", C2),
#   stronger(B2, C2, L).

# pr_stud :- 
#   Students = [[_, _, _, _, _], [_, _, _, _, _], [_, _, _, _, _]],
#   in_list(Students, [andr, dima, net, _, _]),
#   in_list(Students, [andr, net, boris, net, _]),
#   in_list(Students, [net, _, _, viktor, _]),
#   in_list(Students, [andr, _, _, net,_]),
#   in_list(Students, [net, _, _, viktor, _]),
#   in_list(Students, [_, dima, _, _, net]),
#   in_list(Students, [net, _, _, viktor, _]),
#   in_list(Students, [_, dima, net, net, _]),
#   in_list(Students, [_, net, _, viktor, grig]),          
#   write(Students).
