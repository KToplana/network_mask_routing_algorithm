function [output , weight ] = show_way(nodeVector , source , destination )
    counter = 0 ; 
    output = [] ; 
    weight = 0 ; 


    while source ~= destination && counter < 100 
        output = [output source ] ; 
        dsdv = nodeVector(source ).find (destination ) ; 
        if isempty (dsdv )
            output = [output -1 ] ; 
            weight = -weight ; 
            return ; 

        end 
        source = dsdv.IP_next ; 
        weight = weight + dsdv.weight ; 

    end 
    output = [output source ] ; 

end

