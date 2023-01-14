function [X,f] = Espectro (x, Ta,w)
  N = length(x); %solução dos slides
  if w
    x = x' .* blackman(N);%caso x seja(1 , N) para dar windowing, caso seja (N, 1) tirar plica
  end

   % fft -implementa a Transformada Discreta de Fourie(DFT) de uma forma muito eficiente
  X = fft(x)/N;
  X = fftshift(X); % ordena de -fa/2 ate +fa/2
  
  fa = 1/Ta;
  df=fa/N;
  f=[0:(N-1)]*df-fa/2;
  
  %if rem(N,2)==0 %se número de elementos for par
  %    f=(-N/2:N/2 -1)*(fa/N);
  %else %se número de elementos for ímpar
  %    f=(-(N-1)/2:(N-1)/2)*(fa/N);
  %end

  %k = (1:N); %solução do stor Filipe
  %f = (k-1)*fa/N;
  %f = ifftshift(f);
  %f = f-f(1);
  %f = fftshift(f);
end