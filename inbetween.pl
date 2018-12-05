
nat_zahl_acc(N) :- N = 0.
nat_zahl_acc(N) :- N = N2 + 1, nat_zahl_acc(N2).

nat_zahl(X) :- nat_zahl_acc(N), X is N.

%2.

nat_zahl_acc_gerade(N) :- N = 0.
nat_zahl_acc_gerade(N) :- N = N2 + 2, nat_zahl_acc_gerade(N2).

nat_zahl_gerade(X) :- nat_zahl_acc_gerade(N), X is N.

nat_zahl_acc_ungerade(N) :- N = 1.
nat_zahl_acc_ungerade(N) :- N = N2 + 2, nat_zahl_acc_ungerade(N2).

nat_zahl_ungerade(X) :- nat_zahl_acc_ungerade(N), X is N.

%3.
my_between(Min, Max, N) :- nat_zahl(N), N >= Min, N=<Max.%terminiert nicht
