function y = Reverb(x,fs,Delay,Gain)
N = length(x);
delay_n = Delay*fs;
y = x;

for n = (delay_n + 1):N
    y(n) = y(n) + Gain * x(n - delay_n);
end

Px = x'*x/N;
Py = y'*y/N;
y = y*sqrt(Px/Py);
end