in_list([E1|_], E1).
in_list([_|T], E1) :- in_list(T, E1).

main :- 
  Teachers = [_, _, _],
  in_list(Teachers, [tokarev, _, _]),
  in_list(Teachers, [_, biology, _]),
  in_list(Teachers, [_, france, _]),
  in_list(Teachers, [morozov, _, _]),
  in_list(Teachers, [_, _, maths]),
  in_list(Teachers, [_, _, english]),
  in_list(Teachers, [vasilev, _, _]),
  (in_list(Teachers, [_, geo, _]);
  in_list(Teachers, [_, _, geo])),
  (in_list(Teachers, [_, _, hist]);
  in_list(Teachers, [_, hist, _])),
  not(in_list(Teachers, [morozov, _, maths])),
  not(in_list(Teachers, [morozov, biology, _])),
  not(in_list(Teachers, [_, biology, maths])),
  not(in_list(Teachers, [tokarev, biology, _])),
  not(in_list(Teachers, [tokarev, france, _])),     
  write(Teachers).
