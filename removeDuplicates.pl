removeDuplicates([], []).

removeDuplicates([H|T], R) :-
    member(H, T),
    removeDuplicates(T, R).

removeDuplicates([H|T], R) :-
    not(member(H, T)),
    removeDuplicates(T, R2),
    R = [H | R2].
