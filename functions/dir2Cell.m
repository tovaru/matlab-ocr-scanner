% Carga un directorio de imágenes en una celda
function x = dir2Cell(filedir)
    imgfiles = dir(filedir);
    n = length(imgfiles);
    x = cell(n,1);
    for i = 1:n
        imgdir = imgfiles(i).name;
        imgdata = imread(imgdir);
        x{i} = imgdata;
    end
end