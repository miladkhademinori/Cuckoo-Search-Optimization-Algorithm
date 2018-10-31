# Cuckoo-Search-Optimization-Algorithm-MATLAB-Code

WHAT IS CUCKOO SEARCH OPTIMIZATION ALGORITHM?

In operations research, cuckoo search is an optimization algorithm developed by Xin-she Yang and Suash Deb in 2009.[1][2] It was inspired by the obligate brood parasitism of some cuckoo species by laying their eggs in the nests of other host birds (of other species). Some host birds can engage direct conflict with the intruding cuckoos. For example, if a host bird discovers the eggs are not their own, it will either throw these alien eggs away or simply abandon its nest and build a new nest elsewhere. Some cuckoo species such as the New World brood-parasitic Tapera have evolved in such a way that female parasitic cuckoos are often very specialized in the mimicry in colors and pattern of the eggs of a few chosen host species [3] Cuckoo search idealized such breeding behavior, and thus can be applied for various optimization problems.

HOW THE CODE WORKS?

The code consists of 6 parts: start.m (main file), Egg_Assignment_And_Placement, Fitness_Evaluation, Remove_Ten_Percent, Clustering_Best_Finder, Moving_Toward_Best.

Open up the start.m file which is the main file

First of all initialization occurs:
Then in the for loop the algorithm searchs for the best solution.

(1) The first step is "Egg_Assignment_And_Placement" where a number of eggs are laid at the given interval.

(2) Then in the Fitness_Evaluation function, the fitnesses are evaluated.

(3) The least ten percent are removed in Remove_Ten_Percent function.

(4) In the fourth step all eggs are clustered and best cluster is identified.

(5) All clusters move toward best cluster in the end.
