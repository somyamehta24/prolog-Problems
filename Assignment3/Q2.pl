% idea:- we recurse through and find f(n-1,X) & f(n-2,Y) to calculate f(n,Z)
fibonacci(0,1):-!.%base case when 0-th number is asked
fibonacci(1,1):-!.%base case when 1-st number is asked
fibonacci(X,Ans):-
	X>=0,
	Z is X-1,
	Y is X-2,
	fibonacci(Z,Ans1),fibonacci(Y,Ans2),
	Ans is Ans1+Ans2.% arthimatic operation
