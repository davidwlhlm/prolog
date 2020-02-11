prefixSum(L, R) :-
    reverse(L, L2),
    prefixSumReversed(L2, R2),
    reverse(R2, R).

prefixSumReversed([], []).
prefixSumReversed([H | T], R) :-
    prefixSumReversed(T, R2),
    sum_list(T, S),
    H2 is H + S,
    R = [H2 | R2].
