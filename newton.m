function [count,x,ei,er,e2] = newton(f,df,x0,tol,r)
       count = 1;
        x(1) = x0;
        
        ei = abs(x0-r);

    
        while(ei>tol)
            
            x = x - f(x)/df(x);
            e2 = ei;
            ei = abs(x -r); 
            er = ei/e2;
          

           fprintf('%i\n', count, x, ei, er);
          
 count = count + 1;
            
        end
   end


