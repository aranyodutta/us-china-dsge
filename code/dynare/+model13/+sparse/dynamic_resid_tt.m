function [T_order, T] = dynamic_resid_tt(y, x, params, steady_state, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 7
    T = [T; NaN(7 - size(T, 1), 1)];
end
T(1) = (1+params(11))/((1+params(10))*params(1));
T(2) = params(10)/(1+params(10));
T(3) = (1+params(10))*params(13)-params(1)*params(10)^2;
T(4) = params(12)*params(10)*params(1)*(1-params(17))*(params(13)-(1+params(10))*params(1))/((1+params(11))*params(14));
T(5) = (params(13)-(1+params(10))*params(1))*params(12)*params(10)*params(1)*(1-params(18))/((1+params(11))*params(14));
T(6) = params(1)*params(6)/(1+params(11));
T(7) = params(12)*params(10)*params(1)/params(14);
end
