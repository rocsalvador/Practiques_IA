# Cerca local
El problema a resoldre és un problema d'optimització en el qual volem maximitzar el benefici obtingut servint les peticions de les gasolineres, mentre alhora minimitzem el cost de recórrer kilòmetres amb els camions. Addicionalment, la nostra solució al problema és una planificació on tenim, per a cada camió, un trajecte que compleixi amb les restriccions del problema sobre els viatges i els kilòmetres.

Aquest és un problema de cerca local en comptes d'un de cerca heurística, ja que estrictament no hi ha cap condició que ens faci distingir un estat final: tota planificació de trajectes és igual de vàlida per ser considerada solució. Per això, tenim una cerca local on partim d'una planificació (o solució) inicial i l'anem millorant qualitativament aplicant operadors.

Per tant, la implementació de l'estat se centrarà a representar una solució, de manera que els operadors que generin els successors la modificaran amb l'objectiu de generar-ne una de millor qualitat. En aquest punt l'heurístic jugarà un paper molt important, ja que amb algorismes com el de Hill Climbing la tria d'un successor pot condicionar la cerca a una zona concreta de l'espai de solucions, del qual no es podrà sortir mai, depenent de quins siguin els operadors.

## Execució
```bash
java -jar Projecte.jar
```