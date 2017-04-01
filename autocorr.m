function [ r ] = autocorr( X,k )
N=length(X);
r=0;
for m=1:(N-k)
 r=r+X(m)*X(m+k);
end

