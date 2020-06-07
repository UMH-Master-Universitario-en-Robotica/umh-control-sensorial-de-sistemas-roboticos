% gravityCompensator.m
% Control Sensorial de Sistemas Robóticos
% Máster en Robótica - Universidad Miguel Hernández

function G = gravityCompensator(q)

%%% Manipulator parameters
L1 = 0.2; %m
L2 = 0.2; %m
m1 = 10;  %kg
m2 = 10;  %kg
g = 9.81; %m/s2

%%% Gravity compensator
g1 = (m1+m2)*g*L1*cos(q(1))+m2*g*L2*cos(q(1)+q(2));
g2 = m2*g*L2*cos(q(1)+q(2));
G = [g1;g2];

end