function [residual, T_order, T] = dynamic_resid(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(7, 1);
end
[T_order, T] = model13.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
residual = NaN(27, 1);
    residual(1) = (y(28)) - (y(55)-T(1)*y(30)+T(1)*y(56)+T(2)*y(59)-T(2)*y(32)+T(1)*y(36));
    residual(2) = (y(29)) - (y(56)*params(3)+y(28)*params(8)*params(13)/(1+params(11))+y(32)*params(1)*params(10)*params(8)/(1+params(11))+y(30)*params(8));
    residual(3) = (y(32)) - (y(59)-T(1)*y(34)+T(1)*y(60)+y(55)*T(2)-y(28)*T(2)+T(1)*y(37));
    residual(4) = (y(33)) - (params(3)*y(60)+y(32)*params(13)*params(9)/(1+params(11))+y(28)*params(1)*params(10)*params(9)/(1+params(11))+y(34)*params(9));
    residual(5) = (y(30)) - (params(23)*y(3)+(1-params(23))*(params(19)*y(31)+y(28)*params(21))+x(1));
    residual(6) = (y(34)) - (params(24)*y(7)+(1-params(24))*(params(20)*y(35)+y(32)*params(22))+y(30)*params(25)+params(26)*y(51)+x(2));
    residual(7) = (y(36)) - ((-params(1))*(1-params(17))*params(12)*T(3)/((1+params(11))*params(14))*y(38)-T(4)*y(39));
    residual(8) = (y(37)) - (y(39)*T(3)*params(12)*(-params(1))*(1-params(18))/((1+params(11))*params(14))-y(38)*T(5));
    residual(9) = (y(31)) - (y(29)+T(6)*(y(28)-y(1))-T(6)*(y(32)-y(5))+params(16)*(y(38)-y(11))-params(16)*(y(39)-y(12)));
    residual(10) = (y(35)) - (params(16)*(y(39)-y(12))+y(33)+T(6)*(y(32)-y(5))-T(6)*(y(28)-y(1))-params(16)*(y(38)-y(11)));
    residual(11) = (y(40)) - (y(30)+y(28)*params(13)/(1+params(11))+y(32)*params(10)*params(1)/(1+params(11)));
    residual(12) = (y(41)) - (y(34)+y(32)*params(13)/(1+params(11))+y(28)*params(10)*params(1)/(1+params(11)));
    residual(13) = (y(44)) - (y(38)*params(13)*params(12)/params(14)-y(39)*T(7));
    residual(14) = (y(45)) - (y(39)*params(13)*params(12)/params(14)-y(38)*T(7));
    residual(15) = (y(42)) - (y(28)+y(44));
    residual(16) = (y(43)) - (y(32)+y(45));
    residual(17) = (y(46)) - (y(31)+y(19));
    residual(18) = (y(47)) - (y(35)+y(20));
    residual(19) = (y(49)) - (params(1)/(1+params(11))*(y(42)-y(43)));
    residual(20) = (y(50)) - (y(49)*(1-2*params(6)));
    residual(21) = (y(48)) - (y(46)+y(50)-y(47));
    residual(22) = (y(38)) - (params(17)*y(11)+x(3));
    residual(23) = (y(39)) - (params(18)*y(12)+x(4));
    residual(24) = (y(51)) - (params(27)*y(24)+y(35)*params(28)+x(5));
    residual(25) = (y(52)) - (y(42)-y(15)+x(6));
    residual(26) = (y(53)) - (y(46)-y(19)+x(7));
    residual(27) = (y(54)) - (y(30)-y(3)+x(8));
end
