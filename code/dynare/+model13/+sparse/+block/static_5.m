function [y, T] = static_5(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(16)=y(5)+y(18);
  y(15)=y(1)+y(17);
  y(22)=params(1)/(1+params(11))*(y(15)-y(16));
  y(23)=y(22)*(1-2*params(6));
end
