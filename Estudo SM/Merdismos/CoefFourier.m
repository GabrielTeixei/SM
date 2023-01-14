%calcula ck com o integral
function ck = CoefFourier (x, Ta)
  N = length(x); %solução dos slides

   % fft -implementa a Transformada Discreta de Fourie(DFT) de uma forma muito eficiente
  ck = fft(x)/N;
  ck = fftshift(ck); % ordena de -fa/2 ate +fa/2
  
  fa = 1/Ta;
  df=fa/N;
  f=[0:(N-1)]*df-fa/2;

end

%% tentaiva de fazer pelo integral
function [ck, integral_sign, integral] = CoefFourier(x,Ta,k)
    N = length(x);
    T0 = N*Ta;
    F0 = 1/T0;
    w0 = 2*pi*F0;
    t = 0:Ta:T0-Ta;
    integral_sign = zeros(1, length(t));
    for i=1:length(integral_sign)
        integral_sign(i) = x(i)*exp(-1j*k*w0*t(i));
    end
    area_sign = abs(integral_sign*Ta);
    integral = sum(area_sign);
    ck = integral*F0;
end