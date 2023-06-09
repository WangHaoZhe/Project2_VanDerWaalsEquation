% Project 2: Van Der Waals Equation
% Author: WangHaoZhe 522072910008
% Create Date: 2023/5/6
% Submit Date: 2023/5/6

%% Parameters
a = 3.592;
b = 0.04267;
R = 0.082054;
T = 298;
P = 1;
error = 2^(-16);
max_step = 100;

%% NewtonMethod
V = NewtonMethod(P,a,b,R,T,error,max_step);

%% Fixpoint
V = Fixpoint(P,a,b,R,T,error,max_step);

%% Plot V-T
t = linspace(50,300,100);
V = [];
for i=1:100
    V(end+1) = NewtonMethod(P,a,b,R,t(i),error,max_step);
end
plot(t,V);