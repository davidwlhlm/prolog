prefixSum(L, R) :-
    reverse(L, L2),
    prefixSumReversed(L2, R2),
    reverse(R2, R).

prefixSumReversed([], []).

prefixSumReversed([H|T], [H2|R2]) :-
    prefixSumReversed(T, R2),
    sum_list(T, S),
    H2 is H + S.
