
figure
subplot(2, 2, 1);
plot(x, y, 'o');
X_train = getFeatures(x_train, 5);

[theta_1, J_history, T_history] = gradientDescent(X_train, y_train, zeros(6, 1), 0.1, 10000);
subplot(2, 2, 2);
plot(T_history, 'o');

subplot(2, 2, 3);
plot(J_history, 'o');

subplot(2, 2, 4);
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

[theta_2, J_history, T_history] = gradientDescent(X_train, y_train, zeros(6, 1), 0.5, 10000);
subplot(2, 2, 2);
plot(T_history, 'o');

subplot(2, 2, 3);
plot(J_history, 'o');

subplot(2, 2, 4);
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

[theta_3, J_history, T_history] = gradientDescent(X_train, y_train, zeros(6, 1), 0.9, 100000);
subplot(2, 2, 2);
plot(T_history, 'o');

subplot(2, 2, 3);
plot(J_history, 'o');

subplot(2, 2, 4);
syms x1;
x1 = min(x):0.001:max(x);
plot(x1, subs(fittedFunction(theta)));

computeCost(getFeatures(x_train, 5), y_train, theta)
computeCost(getFeatures(x_eval, 5), y_eval, theta)
computeCost(getFeatures(x_test, 5), y_test, theta)

