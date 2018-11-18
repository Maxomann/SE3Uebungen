:- dynamic obj/5.

% obj(Objektnummer, Objekttyp, Strassenname, Hausnummer, Baujahr).
obj(1,efh,gaertnerstr,15,2005).
obj(2,efh,bahnhofsstr,27,1943).
obj(3,efh,bahnhofsstr,29,1997).
obj(4,mfh,bahnhofsstr,28,1989).
obj(5,bahnhof,bahnhofsstr,30,1901).
obj(6,kaufhaus,bahnhofsstr,26,1997).
obj(7,efh,gaertnerstr,17,1982).

:- dynamic bew/6.

% bew(Vorgangsnr, Objektnr, Verkaeufer, Kaeufer, Preis, Verkaufsdatum)
% Datumsangaben haben die Struktur JJJJMMTT 
bew(1,1,mueller,meier,250000,20170401).
bew(2,3,schulze,schneider,260000,19881213).
bew(3,3,schneider,mueller,315000,20011201).
bew(4,5,bund,piepenbrink,1500000,19980601).

bew(5,6,a,b,1500000,19980601).
bew(6,6,b,c,1500000,19980602).
bew(7,6,c,d,1500000,19980603).
bew(8,6,d,e,1500000,19980604).
bew(9,6,e,f,1500000,19980605).
bew(10,6,f,a,1500000,19980606).

neueigentuemer(Eigentuemer, Strasse, Hausnummer) :-
    obj(Objektnummer, _, Strasse, Hausnummer, _),
    bew(_,Objektnummer, _, Eigentuemer, _, Kaufdatum),
    not((bew(_, Objektnummer, _, _, _, Verkaufsdatum), Verkaufsdatum > Kaufdatum)). 

vorbesitzerA(ObjektId, Besitzer, Vorbesitzer) :-
    bew(_, ObjektId, _, Vorbesitzer, _, _), Vorbesitzer \= Besitzer.

vorbesitzerB(ObjektId, Besitzer, Vorbesitzer) :-
    bew(_, ObjektId, Vorbesitzer, Besitzer, _, _).

vorbesitzerB(ObjektId, Besitzer, VorVorbesitzer) :-
    vorbesitzerB(ObjektId, Besitzer, Vorbesitzer),
    vorbesitzerB(ObjektId, Vorbesitzer, VorVorbesitzer).
