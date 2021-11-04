/*
`:-` is "if"
`,` is "and"
`;` is "or"
*/
likes(mary, food).
likes(mary, wine).

likes(john, X) :-
    likes(mary, X).

fib(1, 1) :- !,
    write('1, ').
fib(2, 1) :- !,
    write('1, ').
fib(N, F) :-
    N1 is N-1,
    fib(N1, F1),
    N2 is N-2,
    fib(N2, F2),
    F is F1+F2,
    write(F),
    write(', ').

gcd(X, Y) :-
    X=Y,
    write(Y).

gcd(X, Y) :-
    X>Y,
    T is X-Y,
    gcd(T, Y).

gcd(X, Y) :-
    X<Y,
    T is Y-X,
    gcd(X, T).
