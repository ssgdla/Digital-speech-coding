function[max,pos]=findmax(seg);
max=-1e11;
pos=0;

for i=1:length(seg)
  if seg(i)>max
    pos=i;
    max=seg(i); 
  end
end
