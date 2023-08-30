 %Program 1.2 Fixed-Point Iteration
%Computes approximate solution of g(x)=x
%Input: function handle g, starting guess x0,
%       tolerance tol
%       max number of iteration steps k
%Output: Approximate solution xc
function xc=fpi_class(g, x0, tol, k)
x(1) =x0;
for i=1:k
  x(i+1)=g(x(i));
end
xc=x(k+1);