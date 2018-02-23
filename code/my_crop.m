function [cropped] = my_crop(img)
    height = size(img, 1);
    width = size(img, 2);
    if width < height
        xLeft = 1;
        yTop = (height-width)/2;
        cropped = imcrop(img,[xLeft,yTop,width, width-1]);
    elseif height < width
        xLeft = (width-height)/2;
        yTop = 1;
        cropped = imcrop(img,[xLeft,yTop,height-1, height]);
    else 
        cropped = img;
    end       
end