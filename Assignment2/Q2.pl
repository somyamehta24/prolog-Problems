remove_duplicates([], []). /* empty list as input */

remove_duplicates([H | T], L) :-
	/* if Head is a member of Tail */
	member(H, T),
	remove_duplicates(T, L) ,!. /* use ! to prevent backtracking */

remove_duplicates([H | T], [H | L]) :-
	% if Head is not a member of Tail => Add Head to List 
	% and call remove_duplicates with Tail and updated List
	remove_duplicates(T, L).
