kRemove([H|T], 1, E, R) :-
    E = H,
    R = T.

kRemove([H|T], I, E, R) :-
    I2 is I - 1,
    kRemove(T, I2, E, R2),
    R = [H|R2].
