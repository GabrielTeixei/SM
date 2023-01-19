function Stream = EncodeImage_RLE(Image)
[N,M] = size(Image);
Stream = [];

ImageOne = [];
count = 1;
for n = 1:N
    for m = 1:M
        ImageOne(count) = uint8(Image(n,m));
        count = count + 1;
    end
end

count = 1;
symbol = uint8(Image(1));

for i = 2:N*M
    if ImageOne(i) == ImageOne(i-1)
        count = count + 1;
    else
        Stream = [Stream;symbol;uint8(count)];
        symbol = uint8(ImageOne(i));
        count = 1;
    end
end

Stream = [Stream;symbol;uint8(count)];
end