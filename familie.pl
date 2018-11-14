:- dynamic mutter_von/2, vater_von/2.        % ermoeglicht dynamische Veraenderung
% :- multifile mutter_von/2, vater_von/2.      % ermoeglicht verteilte Definition in mehreren Files

% mutter_von( Mutter , Kind ).
% 'Mutter' und 'Kind' sind Argumentpositionen,
% so dass 'Mutter' die Mutter von 'Kind' ist.

mutter_von( marie , hans ).
mutter_von( marie , helga ).
mutter_von( julia , otto ).
mutter_von( barbara , klaus ).
mutter_von( barbara , andrea ).
mutter_von( charlotte , barbara ).
mutter_von( charlotte , magdalena ).


% vater_von( Vater , Kind ).
% 'Vater' und 'Kind' sind Argumentpositionen,
% so dass 'Vater' die Vater von 'Kind' ist.

vater_von( otto , hans ).
vater_von( otto , helga ).
vater_von( gerd , otto ).
vater_von( johannes , klaus ).
vater_von( johannes , andrea).
vater_von( walter , barbara ).
vater_von( walter , magdalena ).

vater_von(a, b).
vater_von(b, c).
vater_von(c, d).
vater_von(d, e).

kind_von( E, K ) :- vater_von(E, K); mutter_von(E, K).
enkelkind_von( E, EK ) :- kind_von(E, X), kind_von(X, EK).

nachfahre_von(X,Y) :- kind_von(X,Y).
nachfahre_von(X,Z) :- kind_von(X,Y), nachfahre_von(Y, Z). 
