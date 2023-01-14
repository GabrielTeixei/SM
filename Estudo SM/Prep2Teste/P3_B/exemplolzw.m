% Exemplo de utiliza��o das fun��es norm2lzw e lzw2norm
% 2016/2017
% Jos� Vieira
% jnvieira@ua.pt

clear; clc

x = uint8('aaaaaaa');
% Codifica usando o LZW
[out, table] = norm2lzw(x);

fprintf('\n');
fprintf('Input:  ');
fprintf('%02d ', x);
fprintf('\n');
fprintf('Output: ');
fprintf('%04d ', y);
fprintf('\n');
for ii = 257:length(table.codes)
	fprintf('Code: %04d, LastCode %04d+%02d Length %3d\n', ii, table.codes(ii).lastCode, table.codes(ii).c, table.codes(ii).codeLength)
end;

% Descodifica usando o LZW
[xd, td] = lzw2norm(y);

