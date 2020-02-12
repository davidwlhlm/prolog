unique([], []).

unique([H|T], R) :-
    member(H, T),
    unique(T, R).

unique([H|T], R) :-
    unique(T, R2),
    R = [H|R2].
