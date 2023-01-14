function [] = tempo_espetro(y, Ta, Fo, Np, T_F)
    T = 1/Fo;
    t = 0:Ta:Np*T;

    %calcular
    N=length(y);
    Y=fftshift(fft(y))/N;

    df=Fo/N;
    f=(0:(N-1))*df-Fo/2;

    if T_F == 0
        plot(t, y);
        xlabel("Tempo (s)");
        ylabel("y");
        legend("Sinal Y")
        grid on;
    end
    if T_F == 1
        
        plot(f, abs(Y))
        xlabel("Frequência (Hz)")
        ylabel("Magnitude")
        grid on;
    end
    if T_F == 2
        figure(1);
        subplot(2,1,1)
        plot(t, y);
        xlabel("Tempo (s)");
        ylabel("y");
        legend("Sinal Y")


        subplot(2,1,2)
        plot(f, abs(Y))
        xlabel("Frequência (Hz)")
        ylabel("Magnitude")
        grid on;
        grid on;
    else
        disp("T_F deverá ter valores entre 0, 1 e 2.")
    end
        
end