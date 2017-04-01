function[b]=lpf
N=23;
F=[0 0.25 0.375 1];
A=[1 1 0 0];
delta2=10^(-50/20);
delta1=10^(3/20);
delta1=(delta1-1)/(1+delta1);

E=[delta2/delta1 1];

b=remez(N,F,A,E);
