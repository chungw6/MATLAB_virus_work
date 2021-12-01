weak = [];
medium = [];
strong = [];
gvals = linspace(0.01,2,100);

%Weak CTL
c = 0.2;
for g = gvals
    twocompmodel()
    suminf = x(end,2) + x(end,4);
    weak = [weak suminf];
end

%Medium CTL
c = 1;
for g = gvals
    twocompmodel()
    suminf = x(end,2) + x(end,4);
    medium = [medium suminf];
end

%Strong CTL
c = 5;
for g = gvals
    twocompmodel()
    suminf = x(end,2) + x(end,4);
    strong = [strong suminf];
end

plot(gvals,weak,gvals,medium,gvals,strong)
legend('Weak CTL', 'Medium CTL', 'Strong CTL')
xlabel('g (F-homing rate)')
ylabel('# of infected cells')