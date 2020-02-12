domino(L, R) :-
    permutation(L, [H|T]),
    (V1-V2) = H,
    % rotate the first domino to find all possible solutions
    (valid([(V1-V2)|T], R); valid([(V2-V1)|T], R)).

valid([R], [R]).
valid([(V11-V12),(V21-V22)|T], R) :-
    V12 = V21,
    valid([(V21-V22)|T], R2),
    R = [(V11-V12)|R2];
    V12 = V22,
    valid([(V22-V21)|T], R2),
    R = [(V11-V12)|R2].
