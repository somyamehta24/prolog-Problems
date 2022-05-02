analyse_list([]):- write('This is an empty list.'), !.
analyse_list(L):-
[H|T]=L,
write('This is the head of your list: '),
/* print list's head */
write(H),
/* then new line using predicate nl */
write('This is the tail of your list: '),
/* print tail along with prompt as specified in question */
write(T).