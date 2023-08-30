function xc= fpi_school(g, x0, tol, n)
% The fixed point iteration method for g(x) = x
% Input : function handle g, starting guess x0,
%         tolerance tol  
%         max number of iteration steps n
% Output: Approximate solution xc
iter = 0;
u=g(x0);
err = abs(u-x0);
truex = fzero(@(x) x-g(x), x0);
err1=abs(truex-x0);
fprintf('\niter              x                    g(x)      succ error   absolute 
error  error ratio \n');
fprintf(  '------- ------------------------- -------------- -----------  
--------------- -------------\n');
fprintf(  '  %4d     %18.16E %13.6E  %12.6E  %12.6E \n', iter, x0, u, err, err1);
while(err>tol)&(iter<=n)
      x1=u;
      err=abs(x1-x0);
      err0=err1;
      err1= abs(x1-truex);
      ratio = err1/err0;
      x0=x1;
      u=g(x0);
      iter = iter +1;
      fprintf( '  %4d     %18.16E %13.6E  %12.6E  %12.6E %14.6E \n', iter, x0,...
          u, err, err1, ratio);
end
if(iter>n)
    disp( 'Method failed to converge')
end    
      