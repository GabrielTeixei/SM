function [y_t_f,t_f] = tempo_frequencia(T_F,Ta,Fo,Np,Vamp,Vfreq,Vfas);
    T = 1/Fo;
    fa = 1/Ta;
    if nargin ~= 7
        return 
    end
   
    if T_F ~= 1 && T_F ~= 2
        disp("T_F deverá ter valores entre 1 ou 2.")

    end
    N = (T/Ta)*Np;
    t = (0:N-1)*Ta;
    Namp = length(Vamp);
    y = zeros(1,N);
    
    for k=1:Namp
        y = y + Vamp(k)*sin(2*pi*Vfreq(k)*t+Vfas(k));
                
        
    end  
    
    if T_F == 1
        
        t_f = t;
        y_t_f = y;
    else  
        t_f = (0:N-1)*(fa/N)-fa/2;
        y_t_f = fftshift(fft(y)/N);
        
    end
    
    
        
end