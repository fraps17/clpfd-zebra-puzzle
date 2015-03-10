:-use_module(library(clpfd)).
zebra(Water,Zebra):-
/* Variables*/
Vars=[English,Spaniard,Ukrainian,Japanese,Norwegian,
Red,Green,Yellow,Blue,Ivory,
Dog,Snails,Fox,Horse,Zebra,
Tea,Coffee,Milk,OrangeJuice,Water,
Kools,Chesterfields,Parliaments,LuckyStrike,OldGold],
/* 1. There are five houses.*/
Vars ins 1..5,
/* 2. The Englishman lives in the red house.*/
English#=Red,
/* 3. The Spaniard owns the dog.*/
Spaniard#=Dog,
/* 4. Coffee is drunk in the green house.*/
Coffee#=Green,
/* 5. The Ukrainian drinks tea.*/
Ukrainian#=Tea,
/* 6. The green house is immediately to the right of the ivory house.*/
Green#=Ivory+1,
/* 7. The Old Gold smoker owns snails.*/
OldGold#=Snails,
/* 8. Kools are smoked in the yellow house.*/
Kools#=Yellow,
/* 9. Milk is drunk in the middle house.*/
Milk#=3,
/* 10. The Norwegian lives in the first house.*/
Norwegian#=1,
/* 11. The man who smokes Chesterfields lives in the house next to the man with the fox.*/
Chesterfields#=Fox-1#\/Chesterfields#=Fox+1,
/* 12. Kools are smoked in the house next to the house where the horse is kept.*/
Kools#=Horse+1#\/Kools#=Horse-1,
/* 13. The Lucky Strike smoker drinks orange juice.*/
LuckyStrike#=OrangeJuice,
/* 14. The Japanese smokes Parliaments.*/
Japanese#=Parliaments,
/* 15. The Norwegian lives next to the blue house.*/
Norwegian#=Blue+1#\/NO#=Blue-1,
/* all_different constraints*/
all_different([English,Spaniard,Ukrainian,Japanese,Norwegian]),
all_different([Red,Green,Yellow,Blue,Ivory]),
all_different([Coffee,Water,Milk,OrangeJuice,Tea]),
all_different([Dog,Fox,Horse,Snails,Zebra]),
all_different([Chesterfields,LuckyStrike,Parliaments,Kools,OldGold]),
label(Vars).
