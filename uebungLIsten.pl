
last([_|Y], Elem) :-
    last(Y, Elem).

last([X], X).

is_set([X|Y]) :-
    not(member(X, Y)),
    is_set(Y).

is_set([]).

splice([X|Y], List2, [A|B]) :-
    X=A,
    splice(List2, Y, B).

splice([],[],[]).
