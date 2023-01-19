function [N,M,Stream] = Load8bitStream(Filename)
fid = fopen(Filename);
N = fread(fid,1,'uint16');
M = fread(fid,1,'uint16');
Stream = uint8(fread(fid,"uint8"));
fclose(fid);
end