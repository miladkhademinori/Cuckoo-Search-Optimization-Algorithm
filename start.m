% Milad Khademi Nori    95123012
% Cuckoo search algprithm
% 

% Initialization
% Observation
% Fitness evaluation
% Updating SB(t)
% Computing Mi(t)
% Updating Q(t)
% Repeat
clear all
    %% Initialization
    
Max_Num_Of_Population = 6000 ;
Initial_Num_Of_Population = 100 ;
Dynamic_Num_Of_Population = Initial_Num_Of_Population ;
Num_Of_Genes = 3 ;
Num_Of_Iteration = 200 ;
Lower_Band_Of_Genes = -5 ;
Upper_Band_Of_Genes =  5 ;
Lower_Num_Of_Egg = 1 ;
Upper_Num_Of_Egg =  5 ;
Alpha = 5;
Initial_Num_Of_Cluster = 40 ;
Dynamic_Num_Of_Cluster = Initial_Num_Of_Cluster;
Max = -10000000000;
Remove_Percent = 0;

Centroids = zeros ( 1 , Initial_Num_Of_Cluster ) ;
Generation_Of_Chromosome = (Upper_Band_Of_Genes - Lower_Band_Of_Genes)*rand ( Max_Num_Of_Population , Num_Of_Genes ) + Lower_Band_Of_Genes;
Generation_Of_Chromosome_Fitness = zeros ( 1 , Max_Num_Of_Population );
Number_Of_Egg = zeros ( 1 , Max_Num_Of_Population );
Range_Of_Egg = zeros ( Max_Num_Of_Population , Num_Of_Genes );
History_Of_Fitness_Improvement = zeros ( 1 , Num_Of_Iteration);
cnt = 10;
miangin = 0;
%%

for i = 1 : Num_Of_Iteration
    % Egg_Assignment_And_Placement
[ Generation_Of_Chromosome , Dynamic_Num_Of_Population ] = Egg_Assignment_And_Placement ( Alpha , Lower_Num_Of_Egg , Upper_Num_Of_Egg , Generation_Of_Chromosome , Dynamic_Num_Of_Population , Max_Num_Of_Population , Num_Of_Genes , Lower_Band_Of_Genes , Upper_Band_Of_Genes );

    % Fitness evaluation
[ Generation_Of_Chromosome_Fitness ] = Fitness_Evaluation( Generation_Of_Chromosome , Dynamic_Num_Of_Population , Generation_Of_Chromosome_Fitness );

    % remove 10 percent
[ Generation_Of_Chromosome , Dynamic_Num_Of_Population ] = Remove_Ten_Percent( Remove_Percent , Generation_Of_Chromosome , Dynamic_Num_Of_Population , Generation_Of_Chromosome_Fitness );

    % Clustering_Best_Finder
[ Max , Centroids , Dynamic_Num_Of_Cluster , Overall_Fitness , Membership_Function ] = Clustering_Best_Finder( Max , Generation_Of_Chromosome_Fitness , Generation_Of_Chromosome , Dynamic_Num_Of_Population , Dynamic_Num_Of_Cluster );
History_Of_Fitness_Improvement ( 1 , i ) = Max;

    % Moving_Toward_Best
[Generation_Of_Chromosome] = Moving_Toward_Best ( Centroids , Dynamic_Num_Of_Cluster , Overall_Fitness , Membership_Function , Generation_Of_Chromosome  , Num_Of_Genes );
     
    % Dynamic_Num_Of_Cluster  Update
 Dynamic_Num_Of_Cluster = 1 + round(Dynamic_Num_Of_Cluster * ( 1 - (i/Num_Of_Iteration) ));
    
end
plot ( 1:Num_Of_Iteration , History_Of_Fitness_Improvement);
miangin = miangin + History_Of_Fitness_Improvement ( Num_Of_Iteration );
cnt = cnt -1;

