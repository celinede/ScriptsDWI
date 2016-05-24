%loopHisto('/Users/ghfc/Desktop/Celine/',{'P0_F02','P2_F25','P4_F07','P8_F10','P16_F21','P32_F16','P64_F05'})

function [x,y,y_norm]=loopHisto(path,data)

    %n = -1
    %for i = 1:(size(data,2)/2)
     %   n=n+1
     %   histo(data{i+n},data{i+(n+1)})
    %end
    
    namex = 'hist_data_x_nbins5.txt';
    namey = 'hist_data_y_nbins5.txt';
    size(data)
    for i = 1:size(data,2)
        pathx = strcat(path,data{i},'/',namex);
        pathy = strcat(path,data{i},'/',namey);
        [x{i},y{i},y_norm{i}]=histo(pathx,pathy);
    end
    
end