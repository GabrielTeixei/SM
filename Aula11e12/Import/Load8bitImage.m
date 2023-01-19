function [N,M,Im] = Load8bitImage(Filename)
fid = fopen(Filename);
N = fread(fid,1,'uint16');
M = fread(fid,1,'uint16');
Im = uint8(fread(fid,[N,M],"uint8"));
fclose(fid);
end