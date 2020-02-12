member(X, [H|T]) :-
    X = H;
    member(X, T).
