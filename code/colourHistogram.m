function hh = colourHistogram(img, quantSize, colourSpace)
    hh = zeros(quantSize, quantSize, quantSize);
    if colourSpace == 1
        img = rgb2ycbcr(img);    
    elseif colourSpace == 2
        img = rgb2ntsc(img);   
    elseif colourSpace == 3
    	img = rgb2hsv(img);   
    end
    img = double(img);
    imquant = img/255;
    imquant = round(imquant*(quantSize-1)) + 1;
    for i = 1: size(imquant, 1)
        for j = 1: size(imquant, 2)
            r = imquant(i,j,1);
            g = imquant(i,j,2);
            b = imquant(i,j,3);
            hh(r,g,b) = hh(r,g,b) + 1;
        end
    end
end