edge(a,b,4).
edge(a,c,2).
edge(b,d,5).
edge(c,d,1).
edge(c,e,6).
edge(d,e,3).
heuristic(a,5).
heuristic(b,4).
heuristic(c,3).
heuristic(d,1).
heuristic(e,0).
best_first(Start,Goal) :- search([Start],Goal,[]).
search([Goal|_],Goal,_) :- write('Goal reached: '), write(Goal).
search([Node|Rest],Goal,Visited) :-
    findall(H-Next,(edge(Node,Next,_),\+ member(Next,Visited),heuristic(Next,H)),Children),
    keysort(Children,Sorted),
    extract_nodes(Sorted,Nodes),
    append(Nodes,Rest,NewList),
    search(NewList,Goal,[Node|Visited]).
extract_nodes([],[]).
extract_nodes([_-N|T],[N|R]) :- extract_nodes(T,R).
