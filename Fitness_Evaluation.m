function [ Generation_Of_Chromosome_Fitness ] = Fitness_Evaluation( Generation_Of_Chromosome , Dynamic_Num_Of_Population , Generation_Of_Chromosome_Fitness )

Generation_Of_Chromosome_Fitness ( 1 , 1:Dynamic_Num_Of_Population ) = -sum ( ((Generation_Of_Chromosome ( 1:Dynamic_Num_Of_Population , : )').^2).*(3+ sin(20*(Generation_Of_Chromosome ( 1:Dynamic_Num_Of_Population , : )'))) );
%   

end

