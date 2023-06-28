% Devuelve los datos de una matriz en una 
% cantidad reducida de componentes por medio del
% alrogitmo de PCA.

% x: matriz de datos
% k: dimensión de la nueva matriz

function [x,v_idx,med] = pcomp(x,c)

% calcular la media de los datos
med = mean(x);

% restar la media a los datos
xmed = x - med;

% calcular la matriz de covarianza
sigma = cov(xmed);

% calcular valores y vectores características
[vec,vac] = eig(sigma);

% ordenar los vectores en función de los
% valores característicos de mayor a menor
[~,idx] = sort(diag(vac),'descend');
v_idx = vec(:,idx);

% proyectar los datos en los primeros k
% componentes principales
v_idx = v_idx(:,1:c);
x = xmed * v_idx;

end