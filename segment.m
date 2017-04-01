function [ X ] = segment( signal, i, step_size, window_size )

n=0:window_size-1;
window=0.54-0.46*cos(2*pi*n/(window_size-1));
state=0;
for k=1:window_size
    X(k)=window(k)*(signal((i-1)*step_size+k)-0.98*state);
    state=signal((i-1)*step_size+k);
end

