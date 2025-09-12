function g1 = static_g1(T, y, x, params, T_flag)
% function g1 = static_g1(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g1
%

if T_flag
    T = model13.static_g1_tt(T, y, x, params);
end
g1 = zeros(27, 27);
g1(1,2)=(-T(1));
g1(1,3)=T(1);
g1(1,9)=(-T(1));
g1(2,1)=(-(params(8)*params(13)/(1+params(11))));
g1(2,2)=1-params(3);
g1(2,3)=(-params(8));
g1(2,5)=(-(params(1)*params(10)*params(8)/(1+params(11))));
g1(3,6)=(-T(1));
g1(3,7)=T(1);
g1(3,10)=(-T(1));
g1(4,1)=(-(params(1)*params(10)*params(9)/(1+params(11))));
g1(4,5)=(-(params(13)*params(9)/(1+params(11))));
g1(4,6)=1-params(3);
g1(4,7)=(-params(9));
g1(5,1)=(-((1-params(23))*params(21)));
g1(5,3)=1-params(23);
g1(5,4)=(-((1-params(23))*params(19)));
g1(6,3)=(-params(25));
g1(6,5)=(-((1-params(24))*params(22)));
g1(6,7)=1-params(24);
g1(6,8)=(-((1-params(24))*params(20)));
g1(6,24)=(-params(26));
g1(7,9)=1;
g1(7,11)=(-((-params(1))*(1-params(17))*params(12)*T(2)/((1+params(11))*params(14))));
g1(7,12)=T(3);
g1(8,10)=1;
g1(8,11)=T(4);
g1(8,12)=(-(T(2)*params(12)*(-params(1))*(1-params(18))/((1+params(11))*params(14))));
g1(9,2)=(-1);
g1(9,4)=1;
g1(10,6)=(-1);
g1(10,8)=1;
g1(11,1)=(-(params(13)/(1+params(11))));
g1(11,3)=(-1);
g1(11,5)=(-(params(10)*params(1)/(1+params(11))));
g1(11,13)=1;
g1(12,1)=(-(params(10)*params(1)/(1+params(11))));
g1(12,5)=(-(params(13)/(1+params(11))));
g1(12,7)=(-1);
g1(12,14)=1;
g1(13,11)=(-(params(13)*params(12)/params(14)));
g1(13,12)=T(5);
g1(13,17)=1;
g1(14,11)=T(5);
g1(14,12)=(-(params(13)*params(12)/params(14)));
g1(14,18)=1;
g1(15,1)=(-1);
g1(15,15)=1;
g1(15,17)=(-1);
g1(16,5)=(-1);
g1(16,16)=1;
g1(16,18)=(-1);
g1(17,4)=(-1);
g1(18,8)=(-1);
g1(19,15)=(-(params(1)/(1+params(11))));
g1(19,16)=params(1)/(1+params(11));
g1(19,22)=1;
g1(20,22)=(-(1-2*params(6)));
g1(20,23)=1;
g1(21,19)=(-1);
g1(21,20)=1;
g1(21,21)=1;
g1(21,23)=(-1);
g1(22,11)=1-params(17);
g1(23,12)=1-params(18);
g1(24,8)=(-params(28));
g1(24,24)=1-params(27);
g1(25,25)=1;
g1(26,26)=1;
g1(27,27)=1;

end
