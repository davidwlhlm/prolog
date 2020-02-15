domino(L, R) :-
    permutation(L, [H|T]),
    (V1-V2) = H,
    % rotate the first domino to find all possible solutions
    (valid([(V1-V2)|T], R); valid([(V2-V1)|T], R)).

valid([R], [R]).

valid([(V1-V),(V-V2)|T], [(V1-V)|R2]) :-
    valid([(V-V2)|T], R2).

valid([(V1-V),(V2-V)|T], [(V1-V)|R2]) :-
    valid([(V-V2)|T], R2).
