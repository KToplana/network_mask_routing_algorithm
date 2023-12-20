m = 100 ; 
r = 0.13 ; 
tol = 1.3 ; 
startOver = 1 ; 


%weight = 1 per dis < r , weight = 6 per dis > r 
if startOver == 1 
    nodeVector = [node] ; 
    mask = [] ; 
    
    for i = 1 : m 
        nodeVector(i ) = node ; 
        nodeVector(i ).x = rand ( ) ; 
        nodeVector(i ).y = rand ( ) ; 
        nodeVector(i ).distanceVector = DistanceVector ; 
    
    
    end 
else 
    %kordinatat e reja 
    % % nodeVector(2 ).x = 0.5 ; 
    % % nodeVector(2 ).y = 0.9 ; 
end 


for i = 1 : m 
    for j = 1 : m 
        if (i == j )
            mask (i , j ) = 0 ; 
            continue ; 

        end 

        mask(i , j ) = sqrt ((nodeVector(i ).x - nodeVector (j ).x ).^2 + (nodeVector(i ).y - nodeVector (j ).y ).^2 ) ; 
        if mask (i , j ) < r 
            mask(i , j ) = 1 ; 
        elseif mask(i , j ) < tol * r 
            mask (i , j ) = 4 ; 
        else 
            mask (i , j ) = 0 ; 
        end 
        
    end 
end 

plot_mask(nodeVector , mask ) ; 
%secila node ka ne shenim veten 
for i = 1 : m 
    nodeVector(i ).distanceVector(1 ).IP_destination = i ; 
    nodeVector(i ).distanceVector(1 ).IP_next = i ; 
    nodeVector(i ).distanceVector(1 ).weight = 0 ; 
    nodeVector(i ).distanceVector(1 ).date = 0 ; 
end 


iter = [] ; 

for i = 1 : 1000
    [x1 ,x2 ] = gjenero (mask ) ; 
    nodeVector = vectorExchange (x1 , x2 , nodeVector , mask) ; 
    % [output ] = plot_iterations(nodeVector ) ; 
    % iter = [iter output ] ; 
    % if output < 0.001 
    %     break ; 
    % end 


    


end 
% plot (iter ) ; 


