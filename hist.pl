% replacenth0/3 helper
replacenth0(0, [_|T], E, L) :- L = [E|T].
replacenth0(I, [H|T], E, L) :-
    I2 is I - 1,
    replacenth0(I2, T, E, L2),
    L = [H|L2].

% hist/2
hist(L, R) :-
    hist(L, [0,0,0,0,0,0,0,0,0,0], R).

% hist/3
hist([], R, R).
hist([H|T], R1, R) :-
    nth0(H, R1, V),
    V2 is V + 1,
    replacenth0(H, R1, V2, R2),
    hist(T, R2, R).
