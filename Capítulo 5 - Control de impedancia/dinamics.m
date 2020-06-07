% dinamics.m
% Control Sensorial de Sistemas Robóticos
% Máster en Robótica - Universidad Miguel Hernández

function M = dinamics(q)

%%% Manipulator parameters
L1 = 0.2; %m
L2 = 0.2; %m
m1 = 10;  %kg
m2 = 10;  %kg

%%% Compute M
M11 = (m1+m2)*L1^2+m2*L2^2+2*m2*L1*L2*cos(q(2));
M12 = m2*L2^2+m2*L1*L2*cos(q(2));
M21 = m2*L2^2+m2*L1*L2*cos(q(2));
M22 = m2*L2^2;
M = [M11 M12; M21 M22];

end