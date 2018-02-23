function [feat] = get_tiny_images2(image_paths, sqrtD)
    feat = zeros(length(image_paths), sqrtD*sqrtD*3);
    for i = 1 : length(image_paths)
        img = imread(image_paths{i});
        img = my_crop(img);
        %img = imresize(img,[sqrtD sqrtD]);
        feat(i, :) = img(:);    
    end
end