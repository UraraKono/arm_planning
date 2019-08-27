classdef box_obstacle_zonotope < box_obstacle
    properties
        zono
        Z
    end
    
    methods
        function O = box_obstacle_zonotope(varargin)
            O@box_obstacle(varargin{:}) ;
            C = O.center ;
            S = O.side_lengths ;
            O.zono = zonotope([C,diag(S./2)]) ;
            O.Z = get(O.zono, 'Z');
        end
    end
end