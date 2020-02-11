elementInBoth([H], L) :- member(H, L).
elementInBoth([H, _], L) :- member(H, L).
elementInBoth([H|T], L) :- elementInBoth(T, L).
