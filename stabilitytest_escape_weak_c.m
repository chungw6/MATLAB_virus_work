tspan = linspace(0,1000,10000);

xinit = [100,100,100,100];

%escape_model(t, x, lambda, beta, beta_1, d, a, p, c, b)
[t1,x]=ode45(@(t,x) escape_model_weak(t, x, 10, 0.008, 0.006, 0.1, 0.5, 0.001, 3, 0.1), tspan, xinit);
[t2,x2]=ode45(@(t,x) escape_model_weak(t, x, 10, 0.008, 0.006, 0.1, 0.5, 0.001, 4, 0.1), tspan, xinit);
[t3,x3]=ode45(@(t,x) escape_model_weak(t, x, 10, 0.008, 0.006, 0.1, 0.5, 0.001, 5, 0.1), tspan, xinit);
[t4,x4]=ode45(@(t,x) escape_model_weak(t, x, 10, 0.008, 0.006, 0.1, 0.5, 0.001, 6, 0.1), tspan, xinit);
[t5,x5]=ode45(@(t,x) escape_model_weak(t, x, 10, 0.008, 0.006, 0.1, 0.5, 0.001, 7, 0.1), tspan, xinit);
[t6,x6]=ode45(@(t,x) escape_model_weak(t, x, 10, 0.008, 0.006, 0.1, 0.5, 0.001, 8, 0.1), tspan, xinit);
[t7,x7]=ode45(@(t,x) escape_model_weak(t, x, 10, 0.008, 0.006, 0.1, 0.5, 0.001, 9, 0.1), tspan, xinit);
[t8,x8]=ode45(@(t,x) escape_model_weak(t, x, 10, 0.008, 0.006, 0.1, 0.5, 0.001, 10, 0.1), tspan, xinit);


figure(1)
%plot(t1,x(:,1), t2,x2(:,1),t3,x3(:,1),t4,x4(:,1),'.',t5,x5(:,1),'.',t6,x6(:,1),'--',t7,x7(:,1),'--',t8,x8(:,1),'--')
semilogy(t1,abs(x(:,1)), t2,abs(x2(:,1)),t3,abs(x3(:,1)),t4,abs(x4(:,1)),'.',t5,abs(x5(:,1)),'.',t6,abs(x6(:,1)),'--',t7,abs(x7(:,1)),'--',t8,abs(x8(:,1)),'--')
legend('beta1 = 0.003','beta1 = 0.004', 'beta1 = 0.005', 'beta1 = 0.006', 'beta1 = 0.007', 'beta1 = 0.008', 'beta1 = 0.009', 'beta1 = 0.01')
 xlabel('Time')
 
 ylabel('Number of cells (X)')
 
 figure(2)
%plot(t1,abs(x(:,2)), t2,abs(x2(:,2)),t3,abs(x3(:,2)),t4,abs(x4(:,2)),'.',t5,abs(x5(:,2)),'.',t6,abs(x6(:,2)),'--',t7,abs(x7(:,2)),'--',t8,abs(x8(:,2)),'--')
semilogy(t1,abs(x(:,2)), t2,abs(x2(:,2)),t3,abs(x3(:,2)),t4,abs(x4(:,2)),'.',t5,abs(x5(:,2)),'.',t6,abs(x6(:,2)),'--',t7,abs(x7(:,2)),'--',t8,abs(x8(:,2)),'--')
legend('beta1 = 0.003','beta1 = 0.004', 'beta1 = 0.005', 'beta1 = 0.006', 'beta1 = 0.007', 'beta1 = 0.008', 'beta1 = 0.009', 'beta1 = 0.01')
xlabel('Time')
 ylabel('Number of cells (Y)')
 
 figure(3)
%plot(t1,x(:,3), t2,x2(:,3),t3,x3(:,3),t4,x4(:,3),'.',t5,x5(:,3),'.',t6,x6(:,3),'--',t7,x7(:,3),'--',t8,x8(:,3),'--')
semilogy(t1,abs(x(:,3)), t2,abs(x2(:,3)),t3,abs(x3(:,3)),t4,abs(x4(:,3)),'.',t5,abs(x5(:,3)),'.',t6,abs(x6(:,3)),'--',t7,abs(x7(:,3)),'--',t8,abs(x8(:,3)),'--')
legend('beta1 = 0.003','beta1 = 0.004', 'beta1 = 0.005', 'beta1 = 0.006', 'beta1 = 0.007', 'beta1 = 0.008', 'beta1 = 0.009', 'beta1 = 0.01')
xlabel('Time')
 ylabel('Number of cells (Z)')
 
 figure(4)
semilogy(t1,abs(x(:,4)), t2,abs(x2(:,4)),t3,abs(x3(:,4)),t4,abs(x4(:,4)),'.',t5,abs(x5(:,4)),'.',t6,abs(x6(:,4)),'--',t7,abs(x7(:,4)),'--',t8,abs(x8(:,4)),'--')
legend('beta1 = 0.003','beta1 = 0.004', 'beta1 = 0.005', 'beta1 = 0.006', 'beta1 = 0.007', 'beta1 = 0.008', 'beta1 = 0.009', 'beta1 = 0.01')
xlabel('Time')
  ylabel('Number of cells (Y1)')