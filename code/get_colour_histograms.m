function histograms = get_colour_histograms(file_list, quantisation, colourSpace)
    histograms = zeros(length(file_list), quantisation*quantisation*quantisation);
    %histograms = {};
    for i = 1:length(file_list)
        img = imread(file_list{i});%get ith train img to compare
        histo = colourHistogram(img, quantisation, colourSpace);%get histogram of ith image
        histo = histo(:);
        for j=1:length(histo)
            histograms(i,j)=histo(j);
        end
        %histograms{i} = histo;
    end
end