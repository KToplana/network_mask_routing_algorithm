function [x1 , x2 ] = gjenero(mask )
    nrofNode = length (mask ) ; 
    
    x1 = randi (nrofNode ) ; 
    x2 = randi (nrofNode ) ; 

    while (x1 == x2 || mask (x1 , x2 ) == 0 )
        x2 = randi (nrofNode ) ; 
    end 

        
end

