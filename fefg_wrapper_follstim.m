foll = [];
extrafoll = [];
gvals = linspace(0.01,2,100);

% %Weak CTL
% c_e = 0.2;
% c_f = 0.2;
% for g = gvals
%     twocompmodel_follstim()
%     suminf = x(end,2) + x(end,4);
%     weak = [weak suminf];
% end
% 
% %Medium CTL
% c_e = 1;
% c_f = 1;
% for g = gvals
%     twocompmodel_follstim()
%     suminf = x(end,2) + x(end,4);
%     medium = [medium suminf];
% end

%Strong CTL
c_e = 5;
c_f = 5;
for g = gvals
    twocompmodel_follstim()
    xfo = x(end,2);
    fo = x(end,4);
    extrafoll = [extrafoll xfo];
    foll = [foll fo];
end

semilogy(gvals,foll,gvals,extrafoll)
legend('F', 'EF')
xlabel('g (F-homing rate)')
ylabel('# of infected cells')