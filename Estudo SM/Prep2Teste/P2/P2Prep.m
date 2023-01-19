
pkg load image

%%Ler as imagens  

%%IWoman**********
[IWoman , cmapWoman] = imread("Woman.jpg");
rows(IWoman);      % 1200 linhas
columns(IWoman);   % 1053 colunas
ndims(IWoman);    % 3 dimensoes ( rgb -> 3 * 256  ==> 3 matrizes de intensidade para cada cor)
numel(cmapWoman);  % 0 -> Nao indexada
TamanhoWoman = 1200 * 1053 * 3 / 1024^2
%Tipo = uint8 RGB

%%ILifting**********
[ILifting , cmapLifting] = imread("liftingbody.png");
rows(ILifting);      % 512 linhas
columns(ILifting);   % 512 colunas
ndims(ILifting);     % 2 dimensoes
numel(cmapLifting);  %0 -> Nao indexada
TamanhoLifting = 512 * 512 / 1024^2
%Tipo = uint8 Preto/Branco
unique(ILifting)

[IPap , cmapPap] = imread("Papimage.png");
rows(IPap);      % 200 linhas
columns(IPap);   % 150 colunas
ndims(IPap);     % 2 dimensoes
numel(cmapPap);  %768  = 256 * 3  --> Indexada
TamanhoPap = ( 250*150 + 256*3 ) / 1024^2
%Tipo = uint8 e Double || Indexada

%% Os cmaps representam os mapa de cores. A primeira e a segunda imagem nao têm mapa de cores, sendo que
%% a segunda imagem é a preto e branco.
%% A terceira imagem já tem um colormap, pois esta é indexada

%% No que toca ao espaço ocupado, a imagem indexada ocupa muito menos espaço em disco
%% JPG faz boas conversoes mas com alguas perdas

%%Ver imagens
subplot(2,2,1)
imshow(IWoman)
subplot(2,2,2)
imshow(ILifting)
subplot(2,2,3)
imshow(IPap) %%MOstra sem as cores do IPap
%%subplot(2,2,4)
%%imshow(IPap,cmapPap) % %Mostra COM as cores do IPap
