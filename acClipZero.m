function r = acClipZero(x)
x = x(:);		% input must be a column vector
N = length(x);
r = 0;
for i = 1:N
   if (x(i,1) == 0)
      r = r + 0;
     else
       r = r + 1;
     end
end
