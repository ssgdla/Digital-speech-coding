function F0 = clip(frame,Fs)
min_f = 80;   
max_f = 350;  

min_l = floor(Fs/max_f);			
max_l = floor(Fs/min_f);	

CL = findmax(frame) * 0.3;

N = length(frame);
f_clipped = zeros(N,1);
for n = 1:N
   if (frame(n) > CL)
      f_clipped(n,1) = 1;
   elseif (frame(n) < -CL)
      f_clipped(n,1) = -1;
   else
      f_clipped(n,1) = 0;
   end
end

r = acClip(f_clipped,min_l,max_l);	

z = acClipZero(f_clipped);

[m, i] = findmax(r)
	
if (m >= z * 0.3)	
  F0 = i;
else
  F0 = 0;
end
