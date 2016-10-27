p([], [], []).
p([], [H2|T2], [L|Ls]) :-  L = H2,  p([], T2, Ls).
p([H1|T1], [], [L|Ls]) :-  L = H1,	p(T1, [], Ls).
p([H1|T1], [H2|T2], [L|Ls]) :-  L is H1 + H2,  p(T1, T2, Ls).