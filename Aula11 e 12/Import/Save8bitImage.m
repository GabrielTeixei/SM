function Save8bitImage(Filename,Image)
fid = fopen(Filename, 'wb');
[N,M] = size(Image);
fwrite(fid,uint16(N),"uint16");
fwrite(fid,uint16(M),"uint16");
fwrite(fid,Image,"uint8");
fclose(fid);
end