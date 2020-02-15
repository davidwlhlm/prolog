kRemove([H|T], 1, H, T).

kRemove([H|T], I, E, [H|R2]) :-
    I2 is I - 1,
    kRemove(T, I2, E, R2).
