function [x,t]=seriefourier(Ta,f0,Np,ak,bk)
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