
vowel(X):-member(X,[a,e,i,o,u,y]).

count_vowels([],0).

count_vowels([H|R],N):-
    vowel(H),
    count_vowels(R,N1),
    N is N1+1.

count_vowels([H|R],N):-
    \+vowel(H),
    count_vowels(R,N1),
    N is N1+0.
    
