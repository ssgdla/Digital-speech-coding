function [ newF ] = removeNoice( f,Fs )
N=size(f);
n=10;
beginFreq=600/(Fs/2);
endFreq=0.99;
[b,a]=butter(n,[beginFreq,endFreq],'bandpass');
newF=filter(b,a,f);
end

