# clpfd-zebra-puzzle

## Introduction

Zebra puzzle solver in prolog, using clpfd library.
The zebra puzzle is a well-known logic puzzle. It is often called Einstein's Puzzle or Einstein's Riddle because it is said to have been invented by Albert Einstein as a boy. It is often claimed that only 2% of the population can solve it.[2][3] The puzzle is also sometimes attributed to Lewis Carroll. However, there is no known evidence for Einstein's or Carroll's authorship and the Life International puzzle cited below mentions brands of cigarette, such as Kools, that did not exist during Carroll's lifetime or Einstein's boyhood.


## Text
1. There are five houses.
2. The Englishman lives in the red house.
3. The Spaniard owns the dog.
4. Coffee is drunk in the green house.
5. The Ukrainian drinks tea.
6. The green house is immediately to the right of the ivory house.
7. The Old Gold smoker owns snails.
8. Kools are smoked in the yellow house.
9. Milk is drunk in the middle house.
10. The Norwegian lives in the first house.
11. The man who smokes Chesterfields lives in the house next to the man with the fox.
12. Kools are smoked in the house next to the house where the horse is kept.
13. The Lucky Strike smoker drinks orange juice.
14. The Japanese smokes Parliaments.
15. The Norwegian lives next to the blue house.

Now, who drinks water? Who owns the zebra?

*In the interest of clarity, it must be added that each of the five houses is painted a different color, and their inhabitants are of different national extractions, own different pets, drink different beverages and smoke different brands of American cigarets [sic]. One other thing: in statement 6, right means your right.*

— Life International, December 17, 1962

## Resolution
The puzzle can be solved as a Constraint Logic Problem over Finite Domains, using 5 sets of 5 variables, representing the colors, the nationality, the pets, the beverages and the cigaret brands. Each variable is defined over a integer domain, between 1 and 5, representing the corresponding house.
Upon each set of variables, a ALL_DIFFERENT constraint is defined.
Each hint is then used to define a costraint over some variable: the 2nd statement impose that the value of the variable representing the english nationality is equal to the value of the variable representing the red house (meaning that the house where the english man lives should be the same with the red color); the 15th statement impose that the value of the variable representing the norwegian man is either one plus or one less the value of the variable representing the blue house.
In order to define domains and constraints over variables, the [Prolog CLPFD Library](http://www.swi-prolog.org/man/clpfd.html) is used.
