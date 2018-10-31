function [ Generation_Of_Chromosome , Dynamic_Num_Of_Population ] = Egg_Assignment_And_Placement ( Alpha , Lower_Num_Of_Egg , Upper_Num_Of_Egg , Generation_Of_Chromosome , Dynamic_Num_Of_Population , Max_Num_Of_Population , Num_Of_Genes , Lower_Band_Of_Genes , Upper_Band_Of_Genes )

Vector_Of_Egg  = round((Upper_Num_Of_Egg - Lower_Num_Of_Egg)*rand ( 1 , Dynamic_Num_Of_Population ) + Lower_Num_Of_Egg);
New_Chromosome = zeros ( sum(Vector_Of_Egg) ,  Num_Of_Genes ) ;
    
if (sum(Vector_Of_Egg)+ Dynamic_Num_Of_Population) < Max_Num_Of_Population
    
    for i = 1 : Dynamic_Num_Of_Population
        if i == 1
            temp1 = 0;
        else
            temp1 = sum(Vector_Of_Egg ( 1 , 1:(i-1) )); %%
        end
        temp2 = Vector_Of_Egg( 1 , i );
        x = (Vector_Of_Egg( 1 , i )/sum(Vector_Of_Egg))*Alpha*( Upper_Band_Of_Genes - Lower_Band_Of_Genes );
        New_Chromosome ( (temp1+1):(temp1+temp2) , : ) = x*rand( temp2 , Num_Of_Genes ) + repmat(Generation_Of_Chromosome( i , : ),temp2,1);
    end
    Generation_Of_Chromosome ( (Dynamic_Num_Of_Population + 1):(Dynamic_Num_Of_Population + sum(Vector_Of_Egg) ) , : ) = New_Chromosome;
Dynamic_Num_Of_Population = sum(Vector_Of_Egg) + Dynamic_Num_Of_Population;
end

end

