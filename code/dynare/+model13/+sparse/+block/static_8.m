function [y, T] = static_8(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(21)=y(19)+y(23)-y(20);
  y(14)=y(7)+y(5)*params(13)/(1+params(11))+y(1)*params(10)*params(1)/(1+params(11));
  y(13)=y(3)+y(1)*params(13)/(1+params(11))+y(5)*params(10)*params(1)/(1+params(11));
end
