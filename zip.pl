zip([], [], []).

zip([H1|T1], [H2|T2], [H|R2]) :-
    H is H1 + H2,
    zip(T1, T2, R2).
