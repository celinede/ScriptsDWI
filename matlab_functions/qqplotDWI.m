function qqplotDWI(Y)
    figure;
    hold on;
    for i = 1:size(Y,2)-1 %for all subjects
        
        qqplot(Y{size(Y,2)},Y{i});
    end

    saveas(figure(1),'/Users/ghfc/Desktop/Celine/FigMatlab/qqplot.png');
end