function plotValAge(X,Y_norm,age)
    
    for j = 1:size(Y_norm{1},1) %for all bins
        for i = 1:size(Y_norm,2) %for all subjects
            y(i) = [Y_norm{i}(j)];
        end

        figure(j);
        scatter(age,y)
        name = strcat('Bin number: ',num2str(j),'   ~',num2str(X{i}(j)),' FA');
        title(name);
        xlabel('Age (postnatal day)');
        ylabel('Number of voxels (percent)');
        figname = strcat('/Users/ghfc/Desktop/Celine/FigMatlab/valAge_bin',num2str(j),'.png');
        saveas(figure(j),figname);

    end
    
end