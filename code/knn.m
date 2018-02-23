function [ labels ] = knn( X, G, T, K, dis )   
    %initialise labels to 0
    labels = cell(size(T,1),1);
    %calculate all distances between all train and test data
    all_distances = pdist2(X,T, dis);
    for j=1:size(T,1)
        %sort the distances for the current piece of test data
        [sorted, indexes] = sort(all_distances(:,j));
        knn = cell(K,1);
        %for the k nearest points get their class
        for i=1:K
            knn(i) = G(indexes(i));
        end
        %add the mode label to labels
        [unique_strings, ~, string_map]=unique(knn);
        labels(j) = unique_strings(mode(string_map));
    end
end

