classdef node
    %NODE Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        x 
        y 
        distanceVector DistanceVector
    end
    
    methods
        function obj = node(inputArg1,inputArg2)
            
        end
        
        function outputArg = find(obj,IP_destination)
            m = length (obj.distanceVector ) ; 
            for i = 1 : m 
                if obj.distanceVector(i ).IP_destination == IP_destination 
                    outputArg = obj.distanceVector(i ) ; 
                    return ; 
                    

                end 
            end 
            outputArg = [] ; 
            
        end
    end
end

