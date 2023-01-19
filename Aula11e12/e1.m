clear
close all
clc

% Exercício 1
[Image,ColorMap] = imread("Parede_8bit.bmp");
figure(1)
imshow(Image,ColorMap);
title('Imagem original')
pause(0.5)

% Exercício 2
Save8BitImage('ex2Image',Image)

% Exercício 3
[N,M,Im] = Load8BitImage('ex2Image');
figure(2)
imshow(Im,ColorMap);
title('Imagem do exercício 3')
pause(0.5)

% Exercicio 4
Stream = EncodeImage_RLE(Image);

% Exercicio 5
save8bitStream('ex5Stream',N,M,Stream);

% Exercicio 6
[N,M,Streamm] = Load8BitStream('ex5Stream');


% Exercicio 7
Image7 = DecodeImage_RLE(N,M,Stream);
figure(3)
imshow(Image7,ColorMap);
title('Imagem do exercício 7')