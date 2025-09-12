function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = model13.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(27, 1);
    residual(1) = (y(11)) - (y(38)-T(1)*y(13)+T(1)*y(39)+T(2)*y(40)-T(2)*y(15)+T(1)*y(19));
    residual(2) = (y(12)) - (y(39)*params(3)+y(11)*params(8)*params(13)/(1+params(11))+y(15)*params(1)*params(10)*params(8)/(1+params(11))+y(13)*params(8));
    residual(3) = (y(15)) - (y(40)-T(1)*y(17)+T(1)*y(41)+y(38)*T(2)-y(11)*T(2)+T(1)*y(20));
    residual(4) = (y(16)) - (params(3)*y(41)+y(15)*params(13)*params(9)/(1+params(11))+y(11)*params(1)*params(10)*params(9)/(1+params(11))+y(17)*params(9));
    residual(5) = (y(13)) - (params(23)*y(2)+(1-params(23))*(params(19)*y(14)+y(11)*params(21))+x(it_, 1));
    residual(6) = (y(17)) - (params(24)*y(4)+(1-params(24))*(params(20)*y(18)+y(15)*params(22))+y(13)*params(25)+params(26)*y(34)+x(it_, 2));
    residual(7) = (y(19)) - ((-params(1))*(1-params(17))*params(12)*T(3)/((1+params(11))*params(14))*y(21)-T(4)*y(22));
    residual(8) = (y(20)) - (y(22)*T(3)*params(12)*(-params(1))*(1-params(18))/((1+params(11))*params(14))-y(21)*T(5));
    residual(9) = (y(14)) - (y(12)+T(6)*(y(11)-y(1))-T(6)*(y(15)-y(3))+params(16)*(y(21)-y(5))-params(16)*(y(22)-y(6)));
    residual(10) = (y(18)) - (params(16)*(y(22)-y(6))+y(16)+T(6)*(y(15)-y(3))-T(6)*(y(11)-y(1))-params(16)*(y(21)-y(5)));
    residual(11) = (y(23)) - (y(13)+y(11)*params(13)/(1+params(11))+y(15)*params(10)*params(1)/(1+params(11)));
    residual(12) = (y(24)) - (y(17)+y(15)*params(13)/(1+params(11))+y(11)*params(10)*params(1)/(1+params(11)));
    residual(13) = (y(27)) - (y(21)*params(13)*params(12)/params(14)-y(22)*T(7));
    residual(14) = (y(28)) - (y(22)*params(13)*params(12)/params(14)-y(21)*T(7));
    residual(15) = (y(25)) - (y(11)+y(27));
    residual(16) = (y(26)) - (y(15)+y(28));
    residual(17) = (y(29)) - (y(14)+y(8));
    residual(18) = (y(30)) - (y(18)+y(9));
    residual(19) = (y(32)) - (params(1)/(1+params(11))*(y(25)-y(26)));
    residual(20) = (y(33)) - (y(32)*(1-2*params(6)));
    residual(21) = (y(31)) - (y(29)+y(33)-y(30));
    residual(22) = (y(21)) - (params(17)*y(5)+x(it_, 3));
    residual(23) = (y(22)) - (params(18)*y(6)+x(it_, 4));
    residual(24) = (y(34)) - (params(27)*y(10)+y(18)*params(28)+x(it_, 5));
    residual(25) = (y(35)) - (y(25)-y(7)+x(it_, 6));
    residual(26) = (y(36)) - (y(29)-y(8)+x(it_, 7));
    residual(27) = (y(37)) - (y(13)-y(2)+x(it_, 8));

end
