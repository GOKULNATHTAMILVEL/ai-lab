at(monkey, door).
at(banana, ceiling).
at(box, middle).
move_monkey :- at(monkey, door), retract(at(monkey, door)), assert(at(monkey, middle)), write('Monkey moves to the middle.'), nl.
move_box :- at(box, middle), at(monkey, middle), write('Monkey climbs the box.'), nl.
can_reach_banana :- at(monkey, middle), at(box, middle), at(banana, ceiling), write('Monkey gets the banana.'), nl.
get_banana :- move_monkey, move_box, can_reach_banana.
