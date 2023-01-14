function x = fourier(Ta,f0,Np,ak,bk)
    T0 = 1/f0; %período fundamental
    T = Np*T0; %tempo total
    t= 0:Ta:T-Ta; %vetor tempo de Ta em Ta até T
    N=length(t); %para tornar o vetor de xs do mesmo tamanho de t
    x = zeros(1,N); %inicializar x
    w=2*pi*f0;% fórmula
    for k = 1:length(ak)
        x = x + ak(k)*cos(k*w*t); %somatório de aks
    end
    for k = 1:length(bk)
        x = x + bk(k)*sin(k*w*t); %somatório de bks
    end
end

%% outra
function [x,t]= seriefourier(Ta,f0,Np,a,b)
    Ttotal = Np * (1/f0); %Numero de periodos * periodo
    T0 = 1/f0; %período fundamental
    t = [0:Ta:Ttotal-Ta];%vetor tempo de Ta em Ta até T

    SumA=0;%somatorio de ak
    SumB=0;%somatorio de bk
    
    for k=1:length(a)
        SumA = SumA + a(k)*cos(k*pi*2*f0*t);
        SumB= SumB + b(k)*sin(k*pi*2*f0*t);
    end

    x=SumB+SumA;
end