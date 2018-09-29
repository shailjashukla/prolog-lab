select([],[],[]).
select([H|R],[H|Integers],Chars):-
    integer(H),
    select(R,Integers,Chars).
select([H|R],Integers,[H|Chars]):-
   \+ integer(H),
    select(R,Integers,Chars).
