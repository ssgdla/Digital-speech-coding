clear;
[f,fs] = audioread('male.wav');
newF = removeNoice(f,fs);%Remove noice
p=10; %LPC filter order 8 or 10
N=floor((length(newF)-80)/160);  %Number of frames
rec = zeros(0,0);
b=lpf;
for n=1:N
    seg=segment(newF,n,160,240);
    pitch(n)=0;
    [al,G] = lpcFeatures(seg,p);
    seg_lp=fir(b,seg);
    pitch(n)=clip(seg_lp,8e3);
    rec=[rec,reconstruct(pitch(n),al,G,160,30)];
end

            