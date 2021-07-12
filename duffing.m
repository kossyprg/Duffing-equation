function dxdt = duffing(x,t,alpha,beta,delta,gamma,omega)
dxdt = [x(2); -delta*x(2) - beta*x(1) - alpha*x(1)^3 + gamma*sin(omega*t)];
end