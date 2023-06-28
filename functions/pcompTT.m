% Aplica PCA a una serie de datos 
% de entrenamiento y de prueba.
function [trn,tst] = pcompTT(tst,trn,c)

    % Calcula la matriz reducida de los datos 
    % de entrenamiento.
    [trn,v_idx,med] = pcomp(trn,c);

    % Aplicar PCA a los datos de prueba en base
    % a la media y los vectores principales de los
    % datos de entrenamiento.
    xmed = tst - med;
    v_idx = v_idx(:,1:c);
    tst = xmed * v_idx;

end