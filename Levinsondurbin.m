function [ alpha,E ] = Levinsondurbin( R )
E=R(1);
p=length(R)-1;
alpha=zeros(0,0);
for i=1:p
    k=R(i+1);
    for j=1:i-1
        k=k-alpha(j)*R(i-j+1);
    end
    k=k/E;
    alpha2=alpha;
    alpha(i)=k;
    for j=1:i-1
        alpha(j)=alpha2(j)-k*alpha2(i-j);
    end
    E=(1-k^2)*E;
end

