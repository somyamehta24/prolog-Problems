% Similar to insert_at function here also we recurse in the similar way i.e 
%if we have to remove the 1st element from the list then we simply add a tail to our answer
%for other cases we take Head and then remove the (k-1)th element from the remaining list
remove_at(H,[H|T],1,T):-!.%base case
remove_at(X,[H|T],K,[H|L]):-
	KK is K-1,
	remove_at(X,T,KK,L).
