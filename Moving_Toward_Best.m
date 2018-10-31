function [Generation_Of_Chromosome] = Moving_Toward_Best ( Centroids , Dynamic_Num_Of_Cluster , Overall_Fitness , Membership_Function , Generation_Of_Chromosome  , Num_Of_Genes )
if Dynamic_Num_Of_Cluster > 1
    for i = 1:Dynamic_Num_Of_Cluster
        Overall_Fitness ( 1 , i ) = Overall_Fitness ( 1 , i )/ length ( find ( Membership_Function == i ) );

    end
    [ ~ , Best_Index ] = max(Overall_Fitness ( 1 , 1:Dynamic_Num_Of_Cluster ) );
    Distance_Vector = zeros ( Dynamic_Num_Of_Cluster , Num_Of_Genes );
    Distance_Vector = Centroids - repmat(Centroids( Best_Index , : ),Dynamic_Num_Of_Cluster ,1);
    for i = 1:Dynamic_Num_Of_Cluster
        k = find ( Membership_Function == i);
        Generation_Of_Chromosome ( k , : ) = Generation_Of_Chromosome ( k , : ) + rand *repmat(Distance_Vector ( i , : ) * ( sin(pi*rand) + cos(pi*rand) ), length(k) , 1 );
    end









end
end

