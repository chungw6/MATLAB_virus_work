function yp = f_ef_model_follstim(t, x, lambda_e, lambda_f, beta_e, beta_f, d, a, p, eta, c_e, c_f, b, g, h)
% LV model for ODE
yp = [ lambda_e - d*x(1) - beta_e*x(1)*x(2);                        
    
     beta_e*x(1)*x(2) - a*x(2) - p*x(2)*x(5) - eta*x(2) + eta*x(4);
     
     lambda_f - d*x(3) - beta_f*x(3)*x(4);                          
     
     beta_f*x(3)*x(4) - a*x(4) - p*x(4)*x(6) - eta*x(4) + eta*x(2);
     
     c_e*x(2) - b*x(5) - g*x(5) + h*x(6);                              
     
     c_f*x(4) + g*x(5) - b*x(6) - h*x(6)];                                     
end

