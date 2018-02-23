function [normal_vector] = normalise_vector(img_vector)
    normal_vector = double(img_vector - mean(img_vector));
    normal_vector = normal_vector/std(normal_vector);
end
    
    