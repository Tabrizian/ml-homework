dataset = urlread('https://raw.githubusercontent.com/Tabrizian/ml-homework/master/HW1/dataset/data1.txt');
dataset = strsplit(dataset);
dataset(end) = [];
dataset_new = zeros(length(dataset), 2);
m = length(dataset);
for index = 1:length(dataset)
    dataset_new(index, :) = str2double(strsplit(char(dataset(index)), ','));
end

dataset_new = dataset_new(randperm(length(dataset_new)), :);


x_test = dataset_new(m * 0.6 + m * 0.2 + 1: end, 1);
x = dataset_new(:, 1);

y_train = dataset_new(1: m * 0.6, 2);
y_eval = dataset_new(m * 0.6 + 1: m * 0.6 + m * 0.2, 2);
y_test = dataset_new(m * 0.6 + m * 0.2 + 1: end, 2);
y = dataset_new(:, 2);

figure
subplot(2, 2, 1);
plot(x, y, 'o');
X_train = getFeatures(x_train, 5);

[theta, J_history, T_history] = gradientDescent(X_train, y_train, zeros(6, 1), 0.8, 1000);
subplot(2, 2, 2);
plot(T_history, 'o');

subplot(2, 2, 3);
plot(J_history, 'o');

subplot(2, 2, 1);
hold on;
syms x1;
x1 = min(x):0.001:max(x);
plot(x1, subs(fittedFunction(theta)));

computeCost(getFeatures(x_train, 5), y_train, theta)
computeCost(getFeatures(x_eval, 5), y_eval, theta)
computeCost(getFeatures(x_test, 5), y_test, theta)


figure
subplot(2, 2, 1);
plot(x, y, 'o');
X_train = getFeatures(x_train, 5);

[theta, J_history, T_history] = gradientDescent(X_train, y_train, zeros(6, 1), 0.8, 10000);
subplot(2, 2, 2);
plot(T_history, 'o');

subplot(2, 2, 3);
plot(J_history, 'o');

subplot(2, 2, 1);
hold on;
syms x1;
x1 = min(x):0.001:max(x);
plot(x1, subs(fittedFunction(theta)));

computeCost(getFeatures(x_train, 5), y_train, theta)
computeCost(getFeatures(x_eval, 5), y_eval, theta)
computeCost(getFeatures(x_test, 5), y_test, theta)

figure
subplot(2, 2, 1);
plot(x, y, 'o');
X_train = getFeatures(x_train, 5);

[theta, J_history, T_history] = gradientDescent(X_train, y_train, zeros(6, 1), 0.8, 100000);
subplot(2, 2, 2);
plot(T_history, 'o');

subplot(2, 2, 3);
plot(J_history, 'o');

subplot(2, 2, 1);
hold on;
syms x1;
x1 = min(x):0.001:max(x);
plot(x1, subs(fittedFunction(theta)));

computeCost(getFeatures(x_train, 5), y_train, theta)
computeCost(getFeatures(x_eval, 5), y_eval, theta)
computeCost(getFeatures(x_test, 5), y_test, theta)



