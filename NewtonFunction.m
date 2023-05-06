function y = NewtonFunction(x,P,a,b,R,T)
syms V;
f = V - ((R * T * V^2 / (P * V^2 +a) + b - V)./diff(R * T * V^2 / (P * V^2 +a) + b - V, V));
y = subs(f,x);
end
