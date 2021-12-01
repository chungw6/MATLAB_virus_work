 lambda_e = 10;
 lambda_f = 10;
 beta_e = 0.008;
 beta_f = 0.006;
 d = 0.1;
 a = 0.5;
 p = 0.001;
 eta = 0.01;
 c = 0.05;
 b = 0.1;
 g = 0.5;
 h = 2;

tspan = linspace(0,1000,1000);
xinit = [100,100,100,100,100,100];



% f_ef_model(t, x, lambda_e, lambda_f, beta_e, beta_f, d, a, p, eta, c, b, g, h)
[t1,x1]=ode45(@(t,x) f_ef_model(t, x, lambda_e, lambda_f, beta_e, beta_f, d, a, p, eta, c, b, 0.01, h), tspan, xinit);
[t2,x2]=ode45(@(t,x) f_ef_model(t, x, lambda_e, lambda_f, beta_e, beta_f, d, a, p, eta, c, b, 0.05, h), tspan, xinit);
[t3,x3]=ode45(@(t,x) f_ef_model(t, x, lambda_e, lambda_f, beta_e, beta_f, d, a, p, eta, c, b, 0.1, h), tspan, xinit);
[t4,x4]=ode45(@(t,x) f_ef_model(t, x, lambda_e, lambda_f, beta_e, beta_f, d, a, p, eta, c, b, 0.5, h), tspan, xinit);
[t5,x5]=ode45(@(t,x) f_ef_model(t, x, lambda_e, lambda_f, beta_e, beta_f, d, a, p, eta, c, b, 1, h), tspan, xinit);
[t6,x6]=ode45(@(t,x) f_ef_model(t, x, lambda_e, lambda_f, beta_e, beta_f, d, a, p, eta, c, b, 5, h), tspan, xinit);
[t7,x7]=ode45(@(t,x) f_ef_model(t, x, lambda_e, lambda_f, beta_e, beta_f, d, a, p, eta, c, b, 10, h), tspan, xinit);
[t8,x8]=ode45(@(t,x) f_ef_model(t, x, lambda_e, lambda_f, beta_e, beta_f, d, a, p, eta, c, b, 50, h), tspan, xinit);


figure(1)
%plot(t1,x(:,1), t2,x2(:,1),t3,x3(:,1),t4,x4(:,1),'--',t5,x5(:,1),'--',t6,x6(:,1),'--',t7,x7(:,1),'--',t8,x8(:,1),'--')
semilogy(t1,abs(x1(:,1)), t2,abs(x2(:,1)),t3,abs(x3(:,1)),t4,abs(x4(:,1)),t5,abs(x5(:,1)),t6,abs(x6(:,1)),t7,abs(x7(:,1)),t8,abs(x8(:,1)),t1,abs(x1(:,3)),'--',t2,abs(x2(:,3)),'--',t3,abs(x3(:,3)),'--',t4,abs(x4(:,3)),'--',t5,abs(x5(:,3)),'--',t6,abs(x6(:,3)),'--',t7,abs(x7(:,3)),'--',t8,abs(x8(:,3)),'--')
legend('EF, g = 0.01','EF, g = 0.05', 'EF, g = 0.1', 'EF, g = 0.5', 'EF, g = 1', 'EF, g = 5', 'EF, g = 10', 'EF, g = 50','F, g = 0.01','F, g = 0.05', 'F, g = 0.1', 'F, g = 0.5', 'F, g = 1', 'F, g = 5', 'F, g = 10', 'F, g = 50')
 xlabel('Time')
 
 ylabel('Uninfected CD4 cells (X_e / X_f)')
 
 figure(2)
%plot(t1,abs(x(:,2)), t2,abs(x2(:,2)),t3,abs(x3(:,2)),t4,abs(x4(:,2)),'--',t5,abs(x5(:,2)),'--',t6,abs(x6(:,2)),'--',t7,abs(x7(:,2)),'--',t8,abs(x8(:,2)),'--')
semilogy(t1,abs(x1(:,2)), t2,abs(x2(:,2)),t3,abs(x3(:,2)),t4,abs(x4(:,2)),t5,abs(x5(:,2)),t6,abs(x6(:,2)),t7,abs(x7(:,2)),t8,abs(x8(:,2)),t1,abs(x1(:,4)),'--',t2,abs(x2(:,4)),'--',t3,abs(x3(:,4)),'--',t4,abs(x4(:,4)),'--',t5,abs(x5(:,4)),'--',t6,abs(x6(:,4)),'--',t7,abs(x7(:,4)),'--',t8,abs(x8(:,4)),'--')
legend('EF, g = 0.01','EF, g = 0.05', 'EF, g = 0.1', 'EF, g = 0.5', 'EF, g = 1', 'EF, g = 5', 'EF, g = 10', 'EF, g = 50','F, g = 0.01','F, g = 0.05', 'F, g = 0.1', 'F, g = 0.5', 'F, g = 1', 'F, g = 5', 'F, g = 10', 'F, g = 50')
xlabel('Time')
 ylabel('Infected CD4 cells (Y_e / Y_f)')
 
 figure(3)
%plot(t1,x(:,3), t2,x2(:,3),t3,x3(:,3),t4,x4(:,3),'--',t5,x5(:,3),'--',t6,x6(:,3),'--',t7,x7(:,3),'--',t8,x8(:,3),'--')
semilogy(t1,abs(x1(:,5)), t2,abs(x2(:,5)),t3,abs(x3(:,5)),t4,abs(x4(:,5)),t5,abs(x5(:,5)),t6,abs(x6(:,5)),t7,abs(x7(:,5)),t8,abs(x8(:,5)),t1,abs(x1(:,6)),'--',t2,abs(x2(:,6)),'--',t3,abs(x3(:,6)),'--',t4,abs(x4(:,6)),'--',t5,abs(x5(:,6)),'--',t6,abs(x6(:,6)),'--',t7,abs(x7(:,6)),'--',t8,abs(x8(:,6)),'--')
legend('EF, g = 0.01','EF, g = 0.05', 'EF, g = 0.1', 'EF, g = 0.5', 'EF, g = 1', 'EF, g = 5', 'EF, g = 10', 'EF, g = 50','F, g = 0.01','F, g = 0.05', 'F, g = 0.1', 'F, g = 0.5', 'F, g = 1', 'F, g = 5', 'F, g = 10', 'F, g = 50')
xlabel('Time')
 ylabel('Killer T cells (Z_e / Z_f)')
 