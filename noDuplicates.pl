noDuplicates([]).
noDuplicates([X]).
noDuplicates([H|T]) :-
    not(member(H, T)),
    noDuplicates(T).
