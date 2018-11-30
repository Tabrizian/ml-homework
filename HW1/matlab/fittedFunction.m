function [fitted] = fittedFunction(theta)
syms fitted(x1);
fitted(x1) = 0;
for i=2:length(theta)
    fitted(x1) = fitted(x1) + (x1 ^ (i - 1)) * theta(i);
end

fitted(x1) = fitted(x1) + theta(1);
fitted = fitted(x1);

