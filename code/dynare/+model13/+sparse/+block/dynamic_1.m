function [y, T] = dynamic_1(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(38)=params(17)*y(11)+x(3);
  y(39)=params(18)*y(12)+x(4);
  T(1)=(1+params(10))*params(13)-params(1)*params(10)^2;
  y(36)=(-params(1))*(1-params(17))*params(12)*T(1)/((1+params(11))*params(14))*y(38)-params(12)*params(10)*params(1)*(1-params(17))*(params(13)-(1+params(10))*params(1))/((1+params(11))*params(14))*y(39);
  y(37)=y(39)*T(1)*params(12)*(-params(1))*(1-params(18))/((1+params(11))*params(14))-y(38)*(params(13)-(1+params(10))*params(1))*params(12)*params(10)*params(1)*(1-params(18))/((1+params(11))*params(14));
  y(44)=y(38)*params(13)*params(12)/params(14)-y(39)*params(12)*params(10)*params(1)/params(14);
  y(45)=y(39)*params(13)*params(12)/params(14)-y(38)*params(12)*params(10)*params(1)/params(14);
end
