formel(A) :-
    number(A).

formel(-A) :-
    formel(A).

formel(A+B) :-
    formel(A),
    formel(B).

formel(A-B) :-
    formel(A),
    formel(B).

formel(A*B) :-
    formel(A),
    formel(B).

formel(A/B) :-
    formel(A),
    formel(B).
