
Ta = 0.2;
t1 = [0:Ta:5];
x1 = sin(2*pi*t1);

[T1, y1] = ReconstroiSinal(x1,Ta);

part = [-1: .2: 1];
codebook = [-1.2:.2:1]; 



[index,quants] = quantiz(y1,part,codebook);

plot(T1,y1,T1,quants)
title('Quantization of sine wave')
xlabel('Time')
ylabel('Amplitude')
legend('Original sampled sine wave','Quantized sine wave')
grid();
axis([-.2 7 -1.2 1.2])