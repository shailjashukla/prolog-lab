sort(A,[],A).

sort([],B,B).

sort([E|A],[F|B],[F|C]):-
    E>=F,!,
    sort([E|A],B,C).
    
sort([E|A],[F|B],[E|C]):-
    E=<F,!,
    sort(A,[F|B],C).
