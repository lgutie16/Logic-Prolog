inversa_1([],[]).
inversa_1([X|L1],L2) :-
inversa_1(L1,L3),
append(L3,[X],L2).
