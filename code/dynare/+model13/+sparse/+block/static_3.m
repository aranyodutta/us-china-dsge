function [y, T] = static_3(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(25)=x(6);
  y(26)=x(7);
  y(27)=x(8);
  T(1)=(1+params(10))*params(13)-params(1)*params(10)^2;
  y(9)=(-params(1))*(1-params(17))*params(12)*T(1)/((1+params(11))*params(14))*y(11)-params(12)*params(10)*params(1)*(1-params(17))*(params(13)-(1+params(10))*params(1))/((1+params(11))*params(14))*y(12);
  y(10)=y(12)*T(1)*params(12)*(-params(1))*(1-params(18))/((1+params(11))*params(14))-y(11)*(params(13)-(1+params(10))*params(1))*params(12)*params(10)*params(1)*(1-params(18))/((1+params(11))*params(14));
  y(17)=y(11)*params(13)*params(12)/params(14)-y(12)*params(12)*params(10)*params(1)/params(14);
  y(18)=y(12)*params(13)*params(12)/params(14)-y(11)*params(12)*params(10)*params(1)/params(14);
end
