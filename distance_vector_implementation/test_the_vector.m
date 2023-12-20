if 1 == 2 
    m = length (nodeVector ) ; 
    result = [] ; 
    
    for i = 1 : m 
        n = length (nodeVector(i).distanceVector ) ; 
        for j = 1 : n 
            if  nodeVector(i ).distanceVector(j).IP_destination ~= nodeVector(i ).distanceVector(j).IP_next | 1 
                a = ["Node : " , string(i ) , ...
                     " Going to : " , string(nodeVector(i ).distanceVector(j).IP_destination) , ...
                     " Next : " , string(nodeVector(i ).distanceVector(j).IP_next ) , ...
                     " Weight : " , string(nodeVector(i ).distanceVector(j).weight ) , ... 
                     " Date : " , string(nodeVector(i ).distanceVector(j).date )] ; 
    
                result = [result ; a ] ; 
    
            end 
        end 
    end 
    result 
    return ; 

end 

m = length (nodeVector ) ; 
vec = [] ; 
for i = 1 : m 
    for j = 1 : m 
        if i == j 
            continue ; 
        end 
        [output , weight ] = show_way (nodeVector , i , j ) ; 
        if output(length (output ) ) < 0 
            vector = [i , j ] ; 
            vec = [vec ; vector ] ; 
        end 
    end 
end 
vec ; 
length (vec ) ; 
