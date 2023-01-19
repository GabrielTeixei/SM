clear
clc
%%Ler o som
x = linspace(-1.1, 1.1, 1e6); 
audiowrite('teste.wav', x, 48000, 'BitsPerSample', 16); % mudar para 8 para testar
vowel=audioread('teste.wav');

%%Cálculos
delta = 1-max(vowel)
u = unique(vowel);
lenU = length(u)
maxA = max(vowel(:))
minA = min(vowel(:))

%%2
printf("\nb = 16\n")
printf("q = 2^b = 2^16 = 65536 valores diferentes \n")

%%3
printf("2/q = 2/65536 = delta \n")
delta = u(2)-u(1)

%%4
printf("Há %d valores diferentes no ficheiros.\n\n",lenU)

%%5
b=8;
printf("b = 8 \n")
printf("q = 2^8 = %d valores diferentes\n",2^b)
printf("delta = 2/q = 2/%d = %d \n",2^b ,2/2^b)


