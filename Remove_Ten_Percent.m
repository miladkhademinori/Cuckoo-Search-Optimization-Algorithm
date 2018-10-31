function [ Generation_Of_Chromosome , Dynamic_Num_Of_Population , Generation_Of_Chromosome_Fitness ] = Remove_Ten_Percent( Remove_Percent , Generation_Of_Chromosome , Dynamic_Num_Of_Population , Generation_Of_Chromosome_Fitness )

Num_Of_Remove = round (Remove_Percent*Dynamic_Num_Of_Population);
[Generation_Of_Chromosome_Fitness ,I] = sort( Generation_Of_Chromosome_Fitness ,'descend');
Generation_Of_Chromosome = Generation_Of_Chromosome (I , :) ;
Dynamic_Num_Of_Population = Dynamic_Num_Of_Population -  Num_Of_Remove;

end

