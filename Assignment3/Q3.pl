% idea:- we insert the value at the start with the desired element 
% if we have to insert at 1st position 
% otherwise we move ahead by recursion and take the head into our final list 
%and then insert the element at k-1 th position in the remaining list 


insert_at(X,L,1,[X|L]):-!.%Base case when we have to insert at 1st position
insert_at(X,[H|T],K,[H|List]):-
	KK is K-1,
	insert_at(X,T,KK,List).
