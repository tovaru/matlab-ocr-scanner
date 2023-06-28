% Convierte una celda de imágenes en una
% matriz. Cada fila es una imagen.
function x = imgCell2Matrix(ic)
    [n,~] = size(ic);
    [a,b] = size(ic{1});
    x = zeros(n,a*b);
    for i = 1:n
        x(i,    :) = ic{i}(:)';
    end
end