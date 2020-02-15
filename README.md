# Prolog Examples

Prolog was part of a university course about logic specification and programming. This repository contains solutions for the tasks that occured in exercises and exams.

#### addToList/3

Add N to every element in a list of numbers L and bind the result to R.

```prolog
?- addToList(4, [1,2,3,4,5], R).
R = [5, 6, 7, 8, 9].
```

#### dropn/3

Drop every N'th element of a list L and bind the result to R.

```prolog
?- dropn([a,b,c,d,e,f,g,h,i], 3, R).
R = [a, b, d, e, g, h].

?- dropn([], 3, R).
R = [].
```
