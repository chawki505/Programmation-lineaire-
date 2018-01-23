#nombre d'etudiant (1-7)
param NombreEtudiant:= 7 ; 

#matrice des compactibilite et incompactibilte des etudiants 
param Matrice { i in 1..NombreEtudiant , j in 1..NombreEtudiant} binary ; 

#matrice d'affection de l'etudiant i dans avec l'etudiant j ou le groupe j
var Affectation { i in 1..NombreEtudiant , j in 1..NombreEtudiant } binary ;

#fonction objective 
minimize FonctionObjective :  sum{ i in 1..NombreEtudiant ,j in 1..NombreEtudiant } (Matrice[i,j] * Affectation[i,j]);



#contrainte des lignes c'est l'etudiant A ... G
subject to CompactibleEtudiantA :  sum{ j in 1..NombreEtudiant} Affectation[1,j] = 1 ;
subject to CompactibleEtudiantB :  sum{ j in 1..NombreEtudiant} Affectation[2,j] = 1 ;
subject to CompactibleEtudiantC :  sum{ j in 1..NombreEtudiant} Affectation[3,j] = 1 ;
subject to CompactibleEtudiantD :  sum{ j in 1..NombreEtudiant} Affectation[4,j] = 1 ;
subject to CompactibleEtudiantE :  sum{ j in 1..NombreEtudiant} Affectation[5,j] = 1 ;
subject to CompactibleEtudiantF :  sum{ j in 1..NombreEtudiant} Affectation[6,j] = 1 ;
subject to CompactibleEtudiantG :  sum{ j in 1..NombreEtudiant} Affectation[7,j] = 1 ;


#contrainte des colones c'est les groupes possible dans chaque ligne pour un etudiant
subject to CompactibleGroupe1 :  sum{ i in 1..NombreEtudiant} Affectation[i,1] <= 5 ;
subject to CompactibleGroupe2 :  sum{ i in 1..NombreEtudiant} Affectation[i,2] <= 4 ;
subject to CompactibleGroupe3 :  sum{ i in 1..NombreEtudiant} Affectation[i,3] <= 3 ;
subject to CompactibleGroupe4 :  sum{ i in 1..NombreEtudiant} Affectation[i,4] <= 3 ;
subject to CompactibleGroupe5 :  sum{ i in 1..NombreEtudiant} Affectation[i,5] <= 2 ;
subject to CompactibleGroupe6 :  sum{ i in 1..NombreEtudiant} Affectation[i,6] <= 3 ;
subject to CompactibleGroupe7 :  sum{ i in 1..NombreEtudiant} Affectation[i,7] <= 5 ;







