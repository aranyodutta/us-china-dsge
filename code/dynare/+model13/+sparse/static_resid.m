function [residual, T_order, T] = static_resid(y, x, params, T_order, T)
if nargin < 5
    T_order = -1;
    T = NaN(5, 1);
end
[T_order, T] = model13.sparse.static_resid_tt(y, x, params, T_order, T);
residual = NaN(27, 1);
    residual(1) = (y(1)) - (y(1)-T(1)*y(3)+T(1)*y(2)+T(1)*y(9));
    residual(2) = (y(2)) - (y(2)*params(3)+y(1)*params(8)*params(13)/(1+params(11))+y(5)*params(1)*params(10)*params(8)/(1+params(11))+y(3)*params(8));
    residual(3) = (y(5)) - (y(5)-T(1)*y(7)+T(1)*y(6)+T(1)*y(10));
    residual(4) = (y(6)) - (params(3)*y(6)+y(5)*params(13)*params(9)/(1+params(11))+y(1)*params(1)*params(10)*params(9)/(1+params(11))+y(7)*params(9));
    residual(5) = (y(3)) - (y(3)*params(23)+(1-params(23))*(params(19)*y(4)+y(1)*params(21))+x(1));
    residual(6) = (y(7)) - (y(7)*params(24)+(1-params(24))*(params(20)*y(8)+y(5)*params(22))+y(3)*params(25)+params(26)*y(24)+x(2));
    residual(7) = (y(9)) - ((-params(1))*(1-params(17))*params(12)*T(2)/((1+params(11))*params(14))*y(11)-T(3)*y(12));
    residual(8) = (y(10)) - (y(12)*T(2)*params(12)*(-params(1))*(1-params(18))/((1+params(11))*params(14))-y(11)*T(4));
    residual(9) = (y(4)) - (y(2));
    residual(10) = (y(8)) - (y(6));
    residual(11) = (y(13)) - (y(3)+y(1)*params(13)/(1+params(11))+y(5)*params(10)*params(1)/(1+params(11)));
    residual(12) = (y(14)) - (y(7)+y(5)*params(13)/(1+params(11))+y(1)*params(10)*params(1)/(1+params(11)));
    residual(13) = (y(17)) - (y(11)*params(13)*params(12)/params(14)-y(12)*T(5));
    residual(14) = (y(18)) - (y(12)*params(13)*params(12)/params(14)-y(11)*T(5));
    residual(15) = (y(15)) - (y(1)+y(17));
    residual(16) = (y(16)) - (y(5)+y(18));
    residual(17) = (y(19)) - (y(4)+y(19));
    residual(18) = (y(20)) - (y(8)+y(20));
    residual(19) = (y(22)) - (params(1)/(1+params(11))*(y(15)-y(16)));
    residual(20) = (y(23)) - (y(22)*(1-2*params(6)));
    residual(21) = (y(21)) - (y(19)+y(23)-y(20));
    residual(22) = (y(11)) - (params(17)*y(11)+x(3));
    residual(23) = (y(12)) - (y(12)*params(18)+x(4));
    residual(24) = (y(24)) - (y(24)*params(27)+y(8)*params(28)+x(5));
    residual(25) = (y(25)) - (x(6));
    residual(26) = (y(26)) - (x(7));
    residual(27) = (y(27)) - (x(8));
end
