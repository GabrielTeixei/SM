clear; clc

x = uint8('Olá, eu sou o Joao');
% Codifica usando o LZW
[y, table] = norm2lzw(x);

fprintf('\n');
fprintf('Input:  ');
fprintf('%02d ', x);
fprintf('\n');
fprintf('Output: ');
fprintf('%04d ', y);
fprintf('\n');

% Descodifica usando o LZW
[sr, tableOut] = lzw2norm(y);
fprintf('\n');
fprintf('Input:  ');
fprintf('%02d ', y);
fprintf('\n');
fprintf('Output: ');
fprintf('%04s ', char(sr));
fprintf('\n');