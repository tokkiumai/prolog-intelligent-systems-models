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
