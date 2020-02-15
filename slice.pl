slice([H|_], 1, 1, [H]).

slice([H|T], 1, K, [H|R]) :-
    K2 is K-1,
    slice(T, 1, K2, R).

slice([_|T], I, K, R) :-
    I2 is I-1,
    K2 is K-1,
    slice(T, I2, K2, R).
