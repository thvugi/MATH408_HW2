%Program 1.2 Fixed-Point Iteration
%Computes approximate solution of g(x)=x
%Input: function handle g, starting guess x0,
%       number of iteration steps k
%Output: Approximate solution xc
function [x,ei,er,er2]=fpi(g, x0, tol, real,k)
x(1)=x0;
ei(1)=abs(x-real);
e2 = 0;
for i=1:k
    if(abs(x(i)-real)>tol)
        x(i+1)=g(x(i));
        e2(i) = ei(i);
        ei(i)=(abs(x(i)-real));
        er(i) = ei(i)/e2(i);
        er2(i)= ei(i)/e2(i).^2;
         
    else
        break
    end
       
xc=x(i);
end
