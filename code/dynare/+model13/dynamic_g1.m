function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
% function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
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
%   g1
%

if T_flag
    T = model13.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(27, 49);
g1(1,11)=1;
g1(1,38)=(-1);
g1(1,39)=(-T(1));
g1(1,13)=T(1);
g1(1,15)=T(2);
g1(1,40)=(-T(2));
g1(1,19)=(-T(1));
g1(2,11)=(-(params(8)*params(13)/(1+params(11))));
g1(2,12)=1;
g1(2,39)=(-params(3));
g1(2,13)=(-params(8));
g1(2,15)=(-(params(1)*params(10)*params(8)/(1+params(11))));
g1(3,11)=T(2);
g1(3,38)=(-T(2));
g1(3,15)=1;
g1(3,40)=(-1);
g1(3,41)=(-T(1));
g1(3,17)=T(1);
g1(3,20)=(-T(1));
g1(4,11)=(-(params(1)*params(10)*params(9)/(1+params(11))));
g1(4,15)=(-(params(13)*params(9)/(1+params(11))));
g1(4,16)=1;
g1(4,41)=(-params(3));
g1(4,17)=(-params(9));
g1(5,11)=(-((1-params(23))*params(21)));
g1(5,2)=(-params(23));
g1(5,13)=1;
g1(5,14)=(-((1-params(23))*params(19)));
g1(5,42)=(-1);
g1(6,13)=(-params(25));
g1(6,15)=(-((1-params(24))*params(22)));
g1(6,4)=(-params(24));
g1(6,17)=1;
g1(6,18)=(-((1-params(24))*params(20)));
g1(6,34)=(-params(26));
g1(6,43)=(-1);
g1(7,19)=1;
g1(7,21)=(-((-params(1))*(1-params(17))*params(12)*T(3)/((1+params(11))*params(14))));
g1(7,22)=T(4);
g1(8,20)=1;
g1(8,21)=T(5);
g1(8,22)=(-(T(3)*params(12)*(-params(1))*(1-params(18))/((1+params(11))*params(14))));
g1(9,1)=T(6);
g1(9,11)=(-T(6));
g1(9,12)=(-1);
g1(9,14)=1;
g1(9,3)=(-T(6));
g1(9,15)=T(6);
g1(9,5)=params(16);
g1(9,21)=(-params(16));
g1(9,6)=(-params(16));
g1(9,22)=params(16);
g1(10,1)=(-T(6));
g1(10,11)=T(6);
g1(10,3)=T(6);
g1(10,15)=(-T(6));
g1(10,16)=(-1);
g1(10,18)=1;
g1(10,5)=(-params(16));
g1(10,21)=params(16);
g1(10,6)=params(16);
g1(10,22)=(-params(16));
g1(11,11)=(-(params(13)/(1+params(11))));
g1(11,13)=(-1);
g1(11,15)=(-(params(10)*params(1)/(1+params(11))));
g1(11,23)=1;
g1(12,11)=(-(params(10)*params(1)/(1+params(11))));
g1(12,15)=(-(params(13)/(1+params(11))));
g1(12,17)=(-1);
g1(12,24)=1;
g1(13,21)=(-(params(13)*params(12)/params(14)));
g1(13,22)=T(7);
g1(13,27)=1;
g1(14,21)=T(7);
g1(14,22)=(-(params(13)*params(12)/params(14)));
g1(14,28)=1;
g1(15,11)=(-1);
g1(15,25)=1;
g1(15,27)=(-1);
g1(16,15)=(-1);
g1(16,26)=1;
g1(16,28)=(-1);
g1(17,14)=(-1);
g1(17,8)=(-1);
g1(17,29)=1;
g1(18,18)=(-1);
g1(18,9)=(-1);
g1(18,30)=1;
g1(19,25)=(-(params(1)/(1+params(11))));
g1(19,26)=params(1)/(1+params(11));
g1(19,32)=1;
g1(20,32)=(-(1-2*params(6)));
g1(20,33)=1;
g1(21,29)=(-1);
g1(21,30)=1;
g1(21,31)=1;
g1(21,33)=(-1);
g1(22,5)=(-params(17));
g1(22,21)=1;
g1(22,44)=(-1);
g1(23,6)=(-params(18));
g1(23,22)=1;
g1(23,45)=(-1);
g1(24,18)=(-params(28));
g1(24,10)=(-params(27));
g1(24,34)=1;
g1(24,46)=(-1);
g1(25,7)=1;
g1(25,25)=(-1);
g1(25,35)=1;
g1(25,47)=(-1);
g1(26,8)=1;
g1(26,29)=(-1);
g1(26,36)=1;
g1(26,48)=(-1);
g1(27,2)=1;
g1(27,13)=(-1);
g1(27,37)=1;
g1(27,49)=(-1);

end
