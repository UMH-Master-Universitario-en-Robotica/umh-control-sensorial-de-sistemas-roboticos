% coriolisAndCentripetal.m
% Control Sensorial de Sistemas Robóticos
% Máster en Robótica - Universidad Miguel Hernández

function B = coriolisAndCentripetal(u)

%%% Inputs
q  = u(1:2);
qp = u(3:4);

%%% Manipulator parameters
L1 = 0.2; %m
L2 = 0.2; %m
m1 = 10;  %kg
m2 = 10;  %kg

%%% Compute Coriolis and centripetal forces
b1 = -m2*L1*L2*(2*qp(1)*qp(2)+qp(2)^2)*sin(q(2));
b2 = m2*L1*L2*qp(1)^2*sin(q(2));
B = [b1;b2];