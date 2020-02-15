elementInBoth([H|_], L) :- member(H, L).
elementInBoth([_|T], L) :- elementInBoth(T, L).
