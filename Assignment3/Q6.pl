%idea:- gcd(a,b) so when a>b then we divide a by b and see the remainder
% then our answer would be gcd(b,a%b).Similarly we can handle the case when a<=b
gcd(L,0,L):-!.%base cases i.e when either of the number is 0 
gcd(0,L,L):-!.%then the gcd would be the other number which is not 0
gcd(L,S,Ans):-
	L>=S,!,
	Rem is L mod S,
	gcd(S,Rem,Ans). 
gcd(L,S,Ans):-
	L<S,!,
	Rem is S mod L,
	gcd(L,Rem,Ans).
