function [a, b] = CoefsFourier(Ta, T0, x, K)
    f0=1/T0;
    N = length(x);
    t = (0:N-1)*Ta;
    a = zeros(1,K); 
    b = zeros(1,K);
    for k=1:K
        a(k) = sum(x.*cos(k*2*pi*f0*t)*Ta)/(N*Ta);
        b(k) = sum(x.*sin(k*2*pi*f0*t)*Ta)/(N*Ta);
    end
end
