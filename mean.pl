mean(L, R) :-
    sum_list(L, R1),
    length(L, R2),
    R is R1 / R2.
