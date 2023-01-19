function save8bitStream(Filename,N,M,Stream)
fid = fopen(Filename, 'wb');

fwrite(fid,uint16(N),"uint16");
fwrite(fid,uint16(M),"uint16");

for i = 1:length(Stream)
    fwrite(fid,Stream(i),"uint8");
end

fclose(fid);
end