addToList(_, [], []).

addToList(N, [H|T], R) :-
    addToList(N, T, R2),
    H2 is H + N,
    R = [H2 | R2].
