lambda_e = 50;
lambda_f = 50;
beta_e = 0.00072;
beta_f = 0.00072;
d = 0.01;
a = 0.45;
p = 0.001;
eta = 0.01;
%c_e = 5;
%c_f = 5;
b = 0.01;
%g = 0.5;
h = 2;

tspan = linspace(0,1000,1000);
xinit = [1,1,1,1,1,1];

[t1,x]=ode45(@(t,x) f_ef_model_follstim(t, x, lambda_e, lambda_f, beta_e, beta_f, d, a, p, eta, c_e, c_f, b, g, h), tspan, xinit);

%  plot(t1,x(:,1),t1,x(:,2),t1,x(:,3),t1,x(:,4),t1,x(:,5),t1,x(:,6))
%  legend('X_e', 'Y_e', 'X_f', 'Y_f', 'Z_e', 'Z_f')
%  xlabel('Time')
%  ylabel('Number of cells')