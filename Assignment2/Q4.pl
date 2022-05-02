%Base Case
%If K is 1 then our ans is the head of List
element_at(X,[X|_],1).

% If we have to find Kth element then we will remove first element
% from list then find (K-1)th element
element_at(X, [_|T], K) :-
	%Decrement value of K by 1
	K > 1,
	KK is K-1,
	element_at(X, T, KK).
