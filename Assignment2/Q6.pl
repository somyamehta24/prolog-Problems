check_palindrome([]).%empty list
%Base Case
%If list has single element then it is pallindrome
check_palindrome([_]).
%[H|T] in this H will be first element and [H] will be last element from 
% append function

%if both are same then check for List T otherwise false
check_palindrome(X) :-
	append([H|T], [H], X),
	check_palindrome(T).
