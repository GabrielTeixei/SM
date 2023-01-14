function [NumBits,NumBPS] = GeraMensagem(f,CompMesg,nBits)
N = length(f);
s = randsample(1:N,CompMesg,true,f/sum(f));
NumBits = 0;
for n = 1:N
    NumBits = NumBits + sum(s == n*nBits(n));
end
NumBPS = NumBits/CompMesg;
end