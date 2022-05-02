% idea take each start element and then recurse the range function from start +1 
range(Start,Start,[Start]):-!.%base case when we have only 1 element in our range
range(Start,End,[Start|L]):-
	End>=Start,
	I is Start+1,
	range(I,End,L).
