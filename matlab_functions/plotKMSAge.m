function plotKMSAge(X,Y,age)

    for i = 1:size(Y,2) %for all subjects
        for j = 1:size(Y{1},1) %for all bins
            y(j) = [Y{i}(j)];
        end
        k(i) = kurtosis(y);
        m(i) = mean(y);
        sig(i) = std(y);
        
    end
              
    %Kurtosis
    figure(1);
    scatter(age,k)
    title('Kurtosis');
    xlabel('Age (postnatal day)');
    ylabel('Kurtosis');
    saveas(figure(1),'/Users/ghfc/Desktop/Celine/FigMatlab/kurtosis.png');

    %Mean
    figure(2);
    scatter(age,m)
    title('Mean');
    xlabel('Age (postnatal day)');
    ylabel('Mean');
    saveas(figure(1),'/Users/ghfc/Desktop/Celine/FigMatlab/mean.png');

    %Standard deviation
    figure(3);
    scatter(age,sig,'*')
    title('Standard deviation');
    xlabel('Age (postnatal day)');
    ylabel('Standard deviation');
    saveas(figure(1),'/Users/ghfc/Desktop/Celine/FigMatlab/std.png');

end