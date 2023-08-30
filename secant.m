function x = secant(f,x0,x1,n)
% Solves f(x) = 0 by doing n steps of the Secant Method
%               starting with x0 and x1
% Input: f -- the function
%       x0 -- starting initial guess (a number)
%       x1 -- second initial guess
%        n -- the number of steps to do (iterations)
% Output: x -- the approximate solution

      y0 = f(x0);
      y1 = f(x1);
      for i = 1:n   % Do n times
          x = x1 - ((x1 - x0)*y1/(y1 - y0))      % Secant Formula
          y = f(x)                             % y value at new x
          % Move numbers to get ready for the next step
         x0 = x1;
         y0 = y1;
         x1 = x;
         y1 = y; 
      end
end


