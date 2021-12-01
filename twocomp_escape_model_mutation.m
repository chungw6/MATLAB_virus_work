function yp = twocomp_escape_model_mutation(t, x, lambda_e, lambda_f, beta_e,...
    beta_e1, beta_f, beta_f1, d, a, p, eta, c, b, g, h, mu)
% LV model for ODE
yp = [ lambda_e - d*x(1) - beta_e*x(1)*x(2) - beta_e1*x(1)*x(7);        %X_e                 
    
     beta_e*x(1)*x(2)*(1 - mu) - a*x(2) - p*x(2)*x(5) - eta*x(2) + eta*x(4);     %Y_e
     
     lambda_f - d*x(3) - beta_f*x(3)*x(4) - beta_f1*x(3)*x(8);          %X_f
     
     beta_f*x(3)*x(4)*(1 - mu) - a*x(4) - p*x(4)*x(6) - eta*x(4) + eta*x(2);     %Y_f
     
     c*x(2)*x(5) - b*x(5) - g*x(5) + h*x(6);                            %Z_e
     
     g*x(5) - b*x(6) - h*x(6);                                          %Z_f
     
     beta_e1*x(1)*x(7) + mu*beta_e*x(1)*x(2) - a*x(7) - eta*x(7) + eta*x(8);                  %Y_e1
     
     beta_f1*x(3)*x(8) + mu*beta_f*x(3)*x(4) - a*x(8) - eta*x(8) + eta*x(7)];                 %Y_f1                                   
end

