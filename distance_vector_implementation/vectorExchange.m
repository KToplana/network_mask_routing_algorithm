function [output] = vectorExchange(x1 , x2 , nodeVector , mask )

    
    % % if  length (nodeVector(x1 ).distanceVector) == 0 
    % %     dis_temp1 = DistanceVector ; 
    % %     dis_temp1.IP_destination = x2 ; 
    % %     dis_temp1.IP_next = x2 ; 
    % %     dis_temp1.weight = mask(x1 , x2 ) ; 
    % %     dis_temp1.date = 1 ; 
    % % 
    % %     nodeVector(x1 ).distanceVector = [nodeVector(x1 ).distanceVector dis_temp1 ] ; 
    % % end 
    % % if  length (nodeVector(x2 ).distanceVector) == 0 
    % %     dis_temp1 = DistanceVector ; 
    % %     dis_temp1.IP_destination = x1 ; 
    % %     dis_temp1.IP_next = x1 ; 
    % %     dis_temp1.weight = mask(x2 , x1 ) ; 
    % %     dis_temp1.date = 1 ; 
    % % 
    % %     nodeVector(x2 ).distanceVector = [nodeVector(x2 ).distanceVector dis_temp1 ] ; 
    % % end 
    
    dsdv1 = nodeVector(x1 ).distanceVector ; 
    dsdv2 = nodeVector(x2 ).distanceVector ; 
    m1 = length (dsdv1 ) ; 
    m2 = length (dsdv2 ) ; 
    %Ne rast se distance vector nuk e mbane nyjen me te cilen po komunikon 
    bool1 = 1 ; 
    bool2 = 1 ; 

    

    for i = 1 : m2 
        bool = 0 ; 

        for j = 1 : m1 
            if dsdv2(i).IP_destination == dsdv1(j).IP_destination 
                % if dsdv2(i).date < dsdv1(j).date && dsdv2(i).IP_next == dsdv1(j).IP_next
                %     continue ; 
                % end 
                if dsdv1(j).weight > dsdv2(i).weight + mask(x1 ,x2  ) 
                    nodeVector(x1 ).distanceVector(j).IP_next = x2 ; 
                    nodeVector(x1 ).distanceVector(j).weight = dsdv2(i).weight + mask(x1 ,x2  ) ; 
                    nodeVector(x1 ).distanceVector(j).date = dsdv2(i).date + 1 ; 

                elseif dsdv1(j).weight == dsdv2(i).weight + mask(x1 ,x2)
                    if dsdv2(i ).date + 1 < dsdv1(j).date 
                        nodeVector(x1 ).distanceVector(j).IP_next = x2 ; 
                        nodeVector(x1 ).distanceVector(j).date = dsdv2(i).date + 1 ; 
                        
                    end 
                    
                end 
                bool = 1 ; 
                break ; 




            else 
                
            end 
        end 
            if bool == 0 
                %create one and add 
                dis_temp1 = DistanceVector ; 
                dis_temp1.IP_destination = dsdv2(i).IP_destination  ; 
                dis_temp1.IP_next = x2 ; 
                dis_temp1.weight = mask(x1 , x2 ) + dsdv2(i).weight ; 
                dis_temp1.date = dsdv2(i).date + 1 ; 
        
                nodeVector(x1 ).distanceVector = [nodeVector(x1 ).distanceVector dis_temp1 ] ; 
            end 
            



    end

    for i = 1 : m1 
        bool = 0 ; 

        for j = 1 : m2 
            if dsdv1(i).IP_destination == dsdv2(j).IP_destination 
                % % if dsdv1(i).date < dsdv2(j).date && dsdv1(i).IP_next == dsdv2(j).IP_next
                % %     continue ; 
                % % end 
                if dsdv2(j).weight > dsdv1(i).weight + mask(x2 ,x1  ) 
                    nodeVector(x2 ).distanceVector(j).IP_next = x1 ; 
                    nodeVector(x2 ).distanceVector(j).weight = dsdv1(i).weight + mask(x2 ,x1  ) ; 
                    nodeVector(x2 ).distanceVector(j).date = dsdv1(i).date + 1 ; 

                elseif dsdv2(j).weight == dsdv1(i).weight + mask(x2 ,x1)
                    if dsdv1(i ).date + 1 < dsdv2(j).date 
                        nodeVector(x2 ).distanceVector(j).IP_next = x1 ; 
                        nodeVector(x2 ).distanceVector(j).date = dsdv1(i).date + 1 ; 
                        
                    end 
                    
                end 
                bool = 1 ; 
                break ; 




            else 
                
            end 
        end 
            if bool == 0 
                %create one and add 
                dis_temp1 = DistanceVector ; 
                dis_temp1.IP_destination = dsdv1(i).IP_destination  ; 
                dis_temp1.IP_next = x1 ; 
                dis_temp1.weight = mask(x2 , x1 ) + dsdv1(i).weight ; 
                dis_temp1.date = dsdv1(i).date + 1 ; 
        
                nodeVector(x2 ).distanceVector = [nodeVector(x2 ).distanceVector dis_temp1 ] ; 
            end 
            



    end

            

    output = nodeVector ; 

end

