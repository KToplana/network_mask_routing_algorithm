classdef DistanceVector
    %DISTANCEVECTOR Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        IP_destination
        IP_next
        weight 
        date
    end
    
    methods
        function obj = DistanceVector(inputArg1,inputArg2)

        end
        
        function outputArg = method1(obj,inputArg)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            outputArg = obj.Property1 + inputArg;
        end
    end
end

