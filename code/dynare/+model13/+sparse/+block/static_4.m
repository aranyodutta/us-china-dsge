function [y, T, residual, g1] = static_4(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(9, 1);
  residual(1)=(y(8))-(y(6));
  residual(2)=(y(3))-(y(3)*params(23)+(1-params(23))*(params(19)*y(4)+y(1)*params(21))+x(1));
  residual(3)=(y(6))-(params(3)*y(6)+y(5)*params(13)*params(9)/(1+params(11))+y(1)*params(1)*params(10)*params(9)/(1+params(11))+y(7)*params(9));
  residual(4)=(y(7))-(y(7)*params(24)+(1-params(24))*(params(20)*y(8)+y(5)*params(22))+y(3)*params(25)+params(26)*y(24)+x(2));
  residual(5)=(y(4))-(y(2));
  T(2)=(1+params(11))/((1+params(10))*params(1));
  residual(6)=(y(1))-(y(1)-T(2)*y(3)+T(2)*y(2)+T(2)*y(9));
  residual(7)=(y(5))-(y(5)-T(2)*y(7)+T(2)*y(6)+T(2)*y(10));
  residual(8)=(y(24))-(y(24)*params(27)+y(8)*params(28)+x(5));
  residual(9)=(y(2))-(y(2)*params(3)+y(1)*params(8)*params(13)/(1+params(11))+y(5)*params(1)*params(10)*params(8)/(1+params(11))+y(3)*params(8));
if nargout > 3
    g1_v = NaN(26, 1);
g1_v(1)=1;
g1_v(2)=(-((1-params(24))*params(20)));
g1_v(3)=(-params(28));
g1_v(4)=(-((1-params(23))*params(19)));
g1_v(5)=1;
g1_v(6)=(-1);
g1_v(7)=1-params(3);
g1_v(8)=(-T(2));
g1_v(9)=(-(params(13)*params(9)/(1+params(11))));
g1_v(10)=(-((1-params(24))*params(22)));
g1_v(11)=(-(params(1)*params(10)*params(8)/(1+params(11))));
g1_v(12)=(-1);
g1_v(13)=(-T(2));
g1_v(14)=1-params(3);
g1_v(15)=(-((1-params(23))*params(21)));
g1_v(16)=(-(params(1)*params(10)*params(9)/(1+params(11))));
g1_v(17)=(-(params(8)*params(13)/(1+params(11))));
g1_v(18)=(-params(9));
g1_v(19)=1-params(24);
g1_v(20)=T(2);
g1_v(21)=(-params(26));
g1_v(22)=1-params(27);
g1_v(23)=1-params(23);
g1_v(24)=(-params(25));
g1_v(25)=T(2);
g1_v(26)=(-params(8));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 9, 9);
end
end
