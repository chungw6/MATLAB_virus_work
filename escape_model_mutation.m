function yp = escape_model_mutation(t, x, lambda, beta, beta_1, d, a, p, c, b, mu)
% LV model for ODE
yp = [ lambda - d*x(1) - beta*x(1)*x(2) - beta_1*x(1)*x(4);                        
    
     beta*x(1)*x(2)*(1 - mu) - a*x(2) - p*x(2)*x(3);
     
     c*x(2)*x(3) - b*x(3);                          
     
     beta_1*x(1)*x(4) + mu*beta*x(1)*x(2) - a*x(4)];                                     
end

