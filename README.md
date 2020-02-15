# Prolog Examples

Prolog was part of a university course about logic specification and programming. This repository contains possible solutions for the tasks that occured in exercises and exams. There are also alternative solutions, which might be shorter, easier to understand and/or more performant.

#### addToList/3

Adds N to every element in a list of numbers L and binds the result to R.

```prolog
?- addToList(4, [1,2,3,4,5], R).
R = [5, 6, 7, 8, 9].
```

#### domino/2

Given a list L of domino tiles (represented as pair), arranges all tiles that the right number of each tile is equal to the left number of the tile to its right and the left number of each tile is equal to the right number of the tile to its left. R should return **all** possible solutions.

?- domino([2-1, 3-4, 5-2, 5-4], R).
R = [1-2, 2-5, 5-4, 4-3] ;
R = [3-4, 4-5, 5-2, 2-1] ;
false.

#### dropn/3

Drops every N'th element of a list L and binds the result to R.

```prolog
?- dropn([a,b,c,d,e,f,g,h,i], 3, R).
R = [a, b, d, e, g, h].

?- dropn([], 3, R).
R = [].
```

#### elementInBoth/2

Given two lists L1 and L2, determines whether at least one element of L1 is also contained in L2.

```prolog
?- elementInBoth([a,b,c,d], [d,e,f,g]).
true.

?- elementInBoth([a,b,c,d], [e,f,g,h]).
false.
```

#### hist/2

Given a list of numbers between 0 and 9, create the histogram R.

```prolog
?- hist([1,1,1,1,2,2,2,3,3,5,5,1,8],R).
R = [0, 5, 3, 2, 0, 2, 0, 0, 1, 0].
```

#### isPrime/1

Determines if the number N is a prime number.

```prolog
?- is_prime(5).
true.
?- is_prime(6).
false.
```

#### mean/2

Calculates the mean of a list with numbers L and binds the mean value to R.

```prolog
?- mean([1,2,5,8,9], R).
R = 5.
```

#### member/2

Determines if X is an element of list L. Hint: SWI-Prolog also has a build-in member/2 predicate.

```prolog
?- member(b, [a,b,c,d,e]).
true .

?- member(x, [a,b,c,d,e]).
false.
```

#### noDuplicates/1

Determines if a list L contains no duplicates.

```prolog
?- noDuplicates([a,b,c,d,e]).
true.

?- noDuplicates([a,b,c,d,a]).
false.
```

#### prefixSum/2

Calculates the prefix sum R of a given list of numbers L.

```prolog
?- prefixSum([1,2,3,4], R).
R = [1, 3, 6, 10].
```

#### removeDuplicates/2

Removes all duplicates in a given list L.

```prolog
?- removeDuplicates([a,b,a,b], R).
R = [a, b].
```

#### slice/4

Extract a sublist from a list L which contains elements between the I’th and K’th element of the original list and bind the result to R.

```prolog
?- slice([a,b,b,d,c,d,b,b,d,a,d], 2, 6, R).
R = [b, b, d, c, d].
```

#### zip/3

Given two lists L0 and L1 (equal length), adds the elements occuring at the same position in both lists.

```prolog
?- zip([1,1,2],[4,5,6],R).
R = [5, 6, 8].
```
