function [T_order, T] = static_resid_tt(y, x, params, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 5
    T = [T; NaN(5 - size(T, 1), 1)];
end
T(1) = (1+params(11))/((1+params(10))*params(1));
T(2) = (1+params(10))*params(13)-params(1)*params(10)^2;
T(3) = params(12)*params(10)*params(1)*(1-params(17))*(params(13)-(1+params(10))*params(1))/((1+params(11))*params(14));
T(4) = (params(13)-(1+params(10))*params(1))*params(12)*params(10)*params(1)*(1-params(18))/((1+params(11))*params(14));
T(5) = params(12)*params(10)*params(1)/params(14);
end
