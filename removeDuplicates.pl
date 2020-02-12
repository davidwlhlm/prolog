removeDuplicates([], []).

removeDuplicates([H|T], R) :-
    member(H, T),
    removeDuplicates(T, R).

removeDuplicates([H|T], R) :-
    removeDuplicates(T, R2),
    R = [H | R2].
