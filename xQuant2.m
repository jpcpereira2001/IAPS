function xq = xQuant2(x,b)
% xq = xQuant(x,b)
% -1 <= x < 1 e b : numero de bits
% xq : x quantizado;
A1 = max (x);
A2 = min (x);
xq = (round ( (x - A2) ./ (A1-A2) * (2^b) - 0.5) + 0.5) / (2^b) .* (A1-A2) + A2;
end

