%%matriz 
m = [1 5 1-i;4 j -1]

%%sequecencia de numeros impares
c = 10:-5:-5

%%numeros impares
 x = 1:2:10
%%acresentar nova linha e colina em m

m(3,3)=1
%%apagar as culunas impares
m(:,1:2:end)=[]

%%ver sentros valores 
%valores negativos
x = [1 -3 3 -10]
n = x <0
y=x(n)

%valores positivos 
z = x(~n)
%ou podemos usar o metedo find para achar os valore que nessetamos


%%usamos a funcao polt para graficos 
%help polt 
%axis para curtar o grafrico max min max min 
%por gralha grid on or grind off

%%exemplo 1
t = lispace(0, 100);
f = cos(t);
plot(t,f,"k--")
grind on 
title('sen(x)^x')
xlabel("xxx")
ylabel("yyy")
legend("sen(x)^x")








