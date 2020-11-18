clear all 
close all 
clc

% ex 4.3 The beam is fixed at node 1, has a roller support at node 2, and 
%has an elastic spring support at node 3. 

P = 50e3; %[N] 
E = 210e12; %[Pa]
I = 2e-4; % [m^4]
k_s = 200; % [N/m]
Beam_length = 6; 

e = 3; % number of elements 
n = 4; % number of nodes 

L = Beam_length / e ; 

%% assemble stiffness matrix 


K_global = zeros(n*2,n*2);

K_local = [12 6*L -12 6*L;...
           6*L 4*L^2 -6*L 2*L^2; ...
           -12 -6*L 12 -6*L;...
           6*L 4*L^2 -6*L 2*L^2]; 
       
    
           i = 1; 
           for j = 1:2:2*n
                K_global(i:i+3,j:j+3) =  K_global(i:i+3,j:j+3) + K_local 
                i = i + 2 ; 
                if i == 7
                    break; 
                end 

           end 
           
    




