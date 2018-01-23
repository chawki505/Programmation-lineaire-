# le nombre de sequence qu'on a 
param NombreSequence := 12 ;

# Les couts de chaque sequence 
param CoutSequence{ j in 1..NombreSequence } ;


var SequenceVols{ j in 1..NombreSequence } binary ;

#fonction objective
minimize affectation : sum{ j in 1..NombreSequence } SequenceVols[j] * CoutSequence[j] ;

#contrainte vol1
subject to vol01 : SequenceVols[1] + SequenceVols[4] + SequenceVols[7] + SequenceVols[10]                       >= 1 ;

#contrainte vol1
subject to vol02 : SequenceVols[2] + SequenceVols[5] + SequenceVols[8] + SequenceVols[11]                       >= 1 ;

#contrainte vol1
subject to vol03 : SequenceVols[3] + SequenceVols[6] + SequenceVols[9] + SequenceVols[12]                       >= 1 ;

#contrainte vol1
subject to vol04 : SequenceVols[4] + SequenceVols[7] + SequenceVols[9] + SequenceVols[10] + SequenceVols[12]    >= 1 ;

#contrainte vol1
subject to vol05 : SequenceVols[1] + SequenceVols[6] + SequenceVols[10] + SequenceVols[11]                      >= 1 ;

#contrainte vol1
subject to vol06 : SequenceVols[4] + SequenceVols[5] + SequenceVols[9]                                          >= 1 ;

#contrainte vol1
subject to vol07 : SequenceVols[7] + SequenceVols[8] + SequenceVols[10] + SequenceVols[11] + SequenceVols[12]   >= 1 ;

#contrainte vol1
subject to vol08 : SequenceVols[2] + SequenceVols[4] + SequenceVols[5] + SequenceVols[9]                        >= 1 ;

#contrainte vol1
subject to vol09 : SequenceVols[5] + SequenceVols[8] + SequenceVols[11]                                         >= 1 ;

#contrainte vol1
subject to vol10 : SequenceVols[3] + SequenceVols[7] + SequenceVols[8] + SequenceVols[12]                       >= 1 ;

#contrainte vol1
subject to vol11 : SequenceVols[6] + SequenceVols[9] + SequenceVols[10] + SequenceVols[11] + SequenceVols[12]   >= 1 ;

#contrainte du nombre d'equipage 
subject to equipage : sum { j in 1..NombreSequence } SequenceVols[j] = 3 ;
 
 
 
 
 
