function x = NewtonMethod(P,a,b,R,T,error,max_step)
    V_ini = (R * T) / P;
    step = 0;
    x_rev = V_ini;
    x_new = V_ini;
    
    while step < max_step
        x_old = x_new;
        x_new = NewtonFunction(x_old,P,a,b,R,T);
        x_rev(end + 1) = x_new;
        if    abs(x_new - x_old)<error
              x = x_rev(step+2);
              break
        end
        step = step + 1;
    end
end
