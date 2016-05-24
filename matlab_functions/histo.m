function [Xout,Yout,Yout_norm] = histo(pathx,pathy)

    fx = fopen(pathx,'r');
    fy = fopen(pathy,'r');

    x = fscanf(fx,'%f');
    y = fscanf(fy,'%f');

    fclose(fx);
    fclose(fy);

    nbvox = sum(y);
    %y_norm = y;
    y_norm = y ./ nbvox;
    figure(1);
    bar(x,y_norm);

    name=regexp(pathx,'P\d*_F\d*','match')
    title(name);
    xlabel('Level of fractional anisotropy');
    ylabel('Number of voxels (percent)');
    axis([-0.2 1.1 0 0.5]);
    Xout=x;
    Yout=y;
    Yout_norm=y_norm;
    
    figname = strcat('/Users/ghfc/Desktop/Celine/FigMatlab/histo_',name,'.png')
    saveas(figure(1),figname{1});

end