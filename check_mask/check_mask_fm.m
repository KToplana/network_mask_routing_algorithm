function [bool ] = check_mask_fm(mask )

    [bool ] = check_mask(mask , 0 , 1 , [0] , 1 , 5 ) ; 
    m = length (mask ) ; 
    for i = 1 : m 
        [bool ] = check_mask(mask , 0 , 1 , [0] , 1 , i ) ; 
        if bool == 0 
            break  ;
        end 
    
    end 

end

