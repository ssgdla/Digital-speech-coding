function r = acClip(x, min, max)
x = x(:);			
N = length(x);
r = zeros(N,1);
for k = min:max
  for i = 1:N-k
    if ( (x(i,1) == 0) | (x(i+k,1) == 0) )
      r(k,1) = r(k,1) + 0;
     elseif (x(i,1) == x(i+k,1))
       r(k,1) = r(k,1) + 1;
     else
       r(k,1) = r(k,1) - 1;
     end
  end
end 
