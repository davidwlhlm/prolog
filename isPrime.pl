isPrime(_, 1).

isPrime(N, X) :-
    not(0 is N mod X),
    X2 is X - 1,
    isPrime(N, X2).

isPrime(N) :-
    N >= 2,
    X is N - 1,
    isPrime(N, X).
