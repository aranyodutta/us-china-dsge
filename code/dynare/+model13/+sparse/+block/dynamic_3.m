function [y, T] = dynamic_3(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(43)=y(32)+y(45);
  y(42)=y(28)+y(44);
  y(49)=params(1)/(1+params(11))*(y(42)-y(43));
  y(52)=y(42)-y(15)+x(6);
  y(50)=y(49)*(1-2*params(6));
  y(47)=y(35)+y(20);
  y(46)=y(31)+y(19);
  y(53)=y(46)-y(19)+x(7);
  y(54)=y(30)-y(3)+x(8);
  y(48)=y(46)+y(50)-y(47);
  y(41)=y(34)+y(32)*params(13)/(1+params(11))+y(28)*params(10)*params(1)/(1+params(11));
  y(40)=y(30)+y(28)*params(13)/(1+params(11))+y(32)*params(10)*params(1)/(1+params(11));
end
