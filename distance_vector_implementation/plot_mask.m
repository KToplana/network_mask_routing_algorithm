function [outputArg1] = plot_mask(node_input , mask )
    m = length (node_input ) ; 
    plot (node_input(1 ).x , node_input(1 ).y , 'r*') ; 
    text (node_input(1 ).x , node_input(1 ).y + 0.02 , string (1 )) ; 

    for i = 2 : m 
        hold on ; 
        plot (node_input(i ).x , node_input(i ).y , 'r*') ; 
        text (node_input(i ).x , node_input(i ).y + 0.02 , string (i )) ; 

        hold off ; 
    end 

    for i = 1 : m 
        for j = 1 : m 
            if mask (i , j ) == 1 
                hold on ; 
                x1 = node_input(i ).x ; 
                x2 = node_input(j ).x ; 
                y1 = node_input(i ).y ; 
                y2 = node_input(j ).y ; 
                
                plot ([x1 x2 ] , [y1 y2 ] , Color='black') ; 

                hold off ; 
            elseif mask (i , j ) == 4 
                hold on ; 
                x1 = node_input(i ).x ; 
                x2 = node_input(j ).x ; 
                y1 = node_input(i ).y ; 
                y2 = node_input(j ).y ; 
                
                plot ([x1 x2 ] , [y1 y2 ] , LineStyle="--") ; 

                hold off ; 
            end 

        end 
    end 

end

