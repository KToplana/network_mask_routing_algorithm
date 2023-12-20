function [output ] = plot_iterations(nodeVector )
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
    output = (length (vec ) - m ) / (m * m ) ; 

end

