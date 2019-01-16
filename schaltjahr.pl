teilt(X,Y) :-
    0 is Y mod X.

schalt(Y) :-
    teilt(400, Y), !.

schalt(Y) :-
    teilt(4, Y),
    not(teilt(100,Y)).

monatslaenge(Jahr, Monat, Tage) :-
    Monat is 2,
    schalt(Jahr),
    Tage is 29,
    !.

monatslaenge(Jahr, Monat, Tage) :-
    Monat is 2,
    not(schalt(Jahr)),
    Tage is 28,
    !.

monatslaenge(_, Monat, Tage) :-
    member(Monat, [4,6,9,11]),
    Tage is 30,
    !.

monatslaenge(_, _, Tage) :-
    Tage is 31.
