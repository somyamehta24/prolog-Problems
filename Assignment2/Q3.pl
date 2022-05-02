% if only 2 elements are present in the list, assign first one to X
last_but_one_element([X,_], X).

% otherwise recurse the function over tail of the list
last_but_one_element([_|T], X) :-
	last_but_one_element(T, X).
