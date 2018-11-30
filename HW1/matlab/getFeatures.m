function [features] = getFeatures(x, degree)

features = zeros(length(x), degree);
for i = 1:length(x)
    for j = 1:degree
        features(i, j) = x(i) ^ j;
    end
end

%[features, mean, sigma] = featureNormalize(features);
features = [ones(length(features), 1) features];