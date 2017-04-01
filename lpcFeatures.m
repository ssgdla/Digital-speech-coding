function [ alpha,G ] = lpcFeatures(seg,p)
%return LPC features including gain cofficient and alpha. these would be
%used to be output for record, and used for reconstruction.
R(1)=autocorr(seg,0);
for i=1:p
 R(i+1)=autocorr(seg,i);
end;
[alpha,E]=Levinsondurbin(R);
G=E;
end

