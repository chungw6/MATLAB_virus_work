lambda_e = 50;
lambda_f = 50;
beta_e = 0.00072;
beta_f = 0.00072;
d = 0.01;
a = 0.45;
p = 0.001;
eta = 0.01;
c = 5;
b = 0.01;
%g = 0.5;
h = 2;

tspan = linspace(0,1000000,1000000);
xinit = [1,0.002,1,1];
xinit2 = [100,0.0021,100,0.001];
xinit3 = [1000,0.00198,3000,50];
xinit4 = [1500,0.00202,6000,75];
xinit5 = [625,0.0019,0.1,100];
xinit6 = [1000,0.0019,0.1,100];
xinit7 = [100,0.001,0.1,100];
xinit8 = [500,0.003,0.5,100];


[t1,x]=ode45(@(t,x) escape_model_weak(t, x, 50, 0.00072, 0.00072, 0.01, 0.45, 0.001, 5, 0.01), tspan, xinit);
[t2,x2]=ode45(@(t,x) escape_model_weak(t, x, 50, 0.00072, 0.00072, 0.01, 0.45, 0.001, 5, 0.01), tspan, xinit2);
[t3,x3]=ode45(@(t,x) escape_model_weak(t, x, 50, 0.00072, 0.00072, 0.01, 0.45, 0.001, 5, 0.01), tspan, xinit3);
[t4,x4]=ode45(@(t,x) escape_model_weak(t, x, 50, 0.00072, 0.00072, 0.01, 0.45, 0.001, 5, 0.01), tspan, xinit4);
[t5,x5]=ode45(@(t,x) escape_model_weak(t, x, 50, 0.00072, 0.00072, 0.01, 0.45, 0.001, 5, 0.01), tspan, xinit5);
[t6,x6]=ode45(@(t,x) escape_model_weak(t, x, 50, 0.00072, 0.00072, 0.01, 0.45, 0.001, 5, 0.01), tspan, xinit6);
[t7,x7]=ode45(@(t,x) escape_model_weak(t, x, 50, 0.00072, 0.00072, 0.01, 0.45, 0.001, 5, 0.01), tspan, xinit7);
[t8,x8]=ode45(@(t,x) escape_model_weak(t, x, 50, 0.00072, 0.00072, 0.01, 0.45, 0.001, 5, 0.01), tspan, xinit8);


figure(1)
semilogy(t1,x(:,1), t2,x2(:,1),t3,x3(:,1),t4,x4(:,1),t5,x5(:,1),'.',t6,x6(:,1),'.',t7,x7(:,1),'.',t8,x8(:,1),'.')
 legend('IC1', 'IC2', 'IC3', 'IC4', 'IC5', 'IC6', 'IC7', 'IC8')
 xlabel('Time')
 
 ylabel('Number of cells (X)')
 
 figure(2)
semilogy(t1,abs(x(:,2)), t2,abs(x2(:,2)),t3,abs(x3(:,2)),t4,abs(x4(:,2)),t5,abs(x5(:,2)),'.',t6,abs(x6(:,2)),'.',t7,abs(x7(:,2)),'.',t8,abs(x8(:,2)),'.')
 legend('IC1', 'IC2', 'IC3', 'IC4', 'IC5', 'IC6', 'IC7', 'IC8')
 xlabel('Time')
 ylabel('Number of cells (Y)')
 
 figure(3)
semilogy(t1,x(:,3), t2,x2(:,3),t3,x3(:,3),t4,x4(:,3),t5,x5(:,3),'.',t6,x6(:,3),'.',t7,x7(:,3),'.',t8,x8(:,3),'.')
 legend('IC1', 'IC2', 'IC3', 'IC4', 'IC5', 'IC6', 'IC7', 'IC8')
 xlabel('Time')
 ylabel('Number of cells (Z)')
 
 figure(4)
semilogy(t1,x(:,4), t2,x2(:,4),t3,x3(:,4),t4,x4(:,4),t5,x5(:,4),'.',t6,x6(:,4),'.',t7,x7(:,4),'.',t8,x8(:,4),'.')
 legend('IC1', 'IC2', 'IC3', 'IC4', 'IC5', 'IC6', 'IC7', 'IC8')
 xlabel('Time')
 ylabel('Number of cells (Y1)')