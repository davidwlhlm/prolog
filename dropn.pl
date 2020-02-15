dropn(L, N, R) :-
    dropn(L, N, N, R).

dropn([], _, _, []).

dropn([_|T], 1, N, R) :-
    dropn(T, N, N, R).

dropn([H|T], I, N, [H|R]) :-
    I2 is I - 1, 
    dropn(T, I2, N, R).
