function [ Max , Centroids , Dynamic_Num_Of_Cluster , Overall_Fitness , Membership_Function ] = Clustering_Best_Finder( Max , Generation_Of_Chromosome_Fitness , Generation_Of_Chromosome , Dynamic_Num_Of_Population , Dynamic_Num_Of_Cluster )

[ Membership_Function , Centroids ] =  kmeans ( Generation_Of_Chromosome ( 1:Dynamic_Num_Of_Population , : ) , Dynamic_Num_Of_Cluster );
Overall_Fitness = zeros ( 1 , Dynamic_Num_Of_Cluster );
for i = 1:Dynamic_Num_Of_Cluster
    k = find ( Membership_Function == i);
    Overall_Fitness ( 1 , i ) = mean ( Generation_Of_Chromosome_Fitness ( 1 , k  ) ) ;
end

[ Max1 , ~ ] = max(Generation_Of_Chromosome_Fitness( 1 , 1:Dynamic_Num_Of_Population ));
if Max1 > Max
    Max = Max1;
end
end

