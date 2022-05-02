% idea:- we replace the head with the desired element
% if head comes to be the variable which we want to replace
% otherwise we move ahead by recursion
replace([],X,Y,[]).
replace([H|T],X,Y,[Y|List]):-
	H==X,
	replace(T,X,Y,List),!.
replace([H|T],X,Y,[H|List]):-
	replace(T,X,Y,List).
