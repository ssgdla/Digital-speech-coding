function[out]=fir(b,seg);
k=length(b);

state=zeros(1,k-1);

for i=1:length(seg)
  out(i)=b(1)*seg(i);
  for j=2:k
    out(i)=out(i)+b(j)*state(j-1);
  end
  state=[seg(i) state(1:k-2)];
end

    

