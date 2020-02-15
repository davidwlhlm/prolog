addToList(_, [], []).

addToList(N, [H|T], [H2|R2]) :-
    addToList(N, T, R2),
    H2 is H + N.
