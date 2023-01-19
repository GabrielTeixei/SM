function Save8BitImage(Filename,Image)
    
    fid = fopen(Filename, 'wb');%b
    [n,m] = size(Image); %matriz n * m

    N = uint16(n); 
    M = uint16(m);
    %passar para 2 bits
    fwrite(fid,N,'uint16');  %(no formato uint16)
    fwrite(fid,M,'uint16');  %(no formato uint16)

    fwrite(fid,Image,'uint8');%(no formato uint8) 
    fclose(fid);
end
