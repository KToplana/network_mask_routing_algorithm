function [bool ] = check_mask(mask , n_caller , n_called , call_vector , n_finder , n_finding )
    %kontroll nese n_called eshte ne call_vector 
    m = length (call_vector ) ; 
    % if n_called == n_finder 
    %     bool = 0 ; 
    %     return ; 
    % end 

    for i = 1 : m 
        if call_vector (i ) == n_called 
            bool = 0 ; 
            return ; 
        end 
    end
    if n_finding == n_called 
        bool = 1 ; 
        return ; 
    end 


    call_vector = [call_vector n_called ] ; 
    bool_vec = [] ; 
    m = length (mask ) ; 
    for i = 1 : m 
        if mask(n_called , i ) == 1 
            [bool ] = check_mask(mask , n_called , i , call_vector , n_finder , n_finding ) ; 
            if bool == 1 
                return ; 
            end 

        end 
    end 

    bool = 0 ; 
    return ; 




end

