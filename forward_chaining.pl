fact(sunny).
fact(warm).
rule :- fact(sunny), fact(warm), assertz(fact(pleasant_day)).
rule2 :- fact(pleasant_day), assertz(fact(go_outside)).
forward :- rule, rule2.
