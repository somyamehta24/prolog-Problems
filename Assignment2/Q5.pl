%Base Case
reverse_list([], []).% empty list then return true

%Single Element->Reversed list will be as it is
reverse_list([X], [X]).

reverse_list([H|T], X) :-
	%Reverse the Tail
	reverse_list(T, Temp),
	% add Temp to Head
	append(Temp, [H], X).
