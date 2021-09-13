classdef robot_arm_2D_1link_1DOF < robot_arm_agent
    methods
        function A = robot_arm_2D_1link_1DOF(varargin)
            n_links_and_joints = 1 ;
            
            dimension = 2 ;
            
            link_shapes = {'oval'} ;
            
            link_sizes = [0.55 ;
                          0.05] ;

            joint_locations = [+0.000 ;
                               +0.050 ;
                               -0.250 ;
                                0.000 ] ;
            
            joint_state_limits = [-pi ;
                                  +pi ] ;
            
            joint_speed_limits = [-pi ;
                                  +pi ] ;
            
            joint_input_limits = 10.*[-1 ;
                                      +1 ] ;
            
            A@robot_arm_agent(varargin{:},...
                'n_links_and_joints',n_links_and_joints,...
                'dimension',dimension,...
                'link_shapes',link_shapes,...
                'link_sizes',link_sizes,...
                'joint_locations',joint_locations,...
                'joint_state_limits',joint_state_limits,...
                'joint_speed_limits',joint_speed_limits,...
                'joint_input_limits',joint_input_limits,...
                varargin{:}) ;
        end
    end
end