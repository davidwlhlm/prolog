removeDuplicates([], []).

removeDuplicates([H|T], R) :-
    member(H, T),
    removeDuplicates(T, R).

removeDuplicates([H|T], [H|R2]) :-
    removeDuplicates(T, R2).
