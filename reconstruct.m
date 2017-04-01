function[out]=reconstruct(pitch,alpha,G,samp_size,offset);
B=sqrt(G);
N=samp_size+offset;

if pitch==0
  u=ceil(rand(1,N)-0.5)*2-1;
else
  u=zeros(1,N);
  n=1;
  while n<=N
    u(n)=1;
  n=n+pitch;
  end
end

p=length(alpha);
state=zeros(1,p);

for i=1:N
  out(i)=B*u(i);

  for k=1:p
    out(i)=out(i)+state(k)*alpha(k);
  end

  state=[out(i) state(1:k-1)];
end

out=out(1+offset:N);
