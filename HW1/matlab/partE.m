
figure
subplot(2, 2, 1);
plot(x, y, 'o');
lambda = 1;
X_train = getFeatures(x_train, 7);

[theta_1, J_history, T_history] = gradientDescentReg(X_train, y_train, zeros(8, 1), lambda, 0.8, 10000);
subplot(2, 2, 2);
plot(T_history, 'o');

subplot(2, 2, 3);
plot(J_history, 'o');

subplot(2, 2, 4);
syms x1;
x1 = min(x):0.001:max(x);
plot(x1, subs(fittedFunction(theta_1)));


computeCostReg(getFeatures(x_train, 7), y_train, theta_1, lambda)
computeCostReg(getFeatures(x_eval, 7), y_eval, theta_1, lambda)
computeCostReg(getFeatures(x_test, 7), y_test, theta_1, lambda)


figure
subplot(2, 2, 1);
plot(x, y, 'o');
lambda = 10;
X_train = getFeatures(x_train, 7);

[theta_2, J_history, T_history] = gradientDescentReg(X_train, y_train, zeros(8, 1), lambda, 0.8, 10000);
subplot(2, 2, 2);
plot(T_history, 'o');

subplot(2, 2, 3);
plot(J_history, 'o');

subplot(2, 2, 4);
syms x1;
x1 = min(x):0.001:max(x);
plot(x1, subs(fittedFunction(theta_2)));


computeCostReg(getFeatures(x_train, 7), y_train, theta_2, lambda)
computeCostReg(getFeatures(x_eval, 7), y_eval, theta_2, lambda)
computeCostReg(getFeatures(x_test, 7), y_test, theta_2, lambda)


figure
subplot(2, 2, 1);
plot(x, y, 'o');
lambda = 20;
X_train = getFeatures(x_train, 7);

[theta_3, J_history, T_history] = gradientDescentReg(X_train, y_train, zeros(8, 1), lambda, 0.8, 10000);
subplot(2, 2, 2);
plot(T_history, 'o');

subplot(2, 2, 3);
plot(J_history, 'o');

subplot(2, 2, 4);
syms x1;
x1 = min(x):0.001:max(x);
plot(x1, subs(fittedFunction(theta_3)));


computeCostReg(getFeatures(x_train, 7), y_train, theta_3, lambda)
computeCostReg(getFeatures(x_eval, 7), y_eval, theta_3, lambda)
computeCostReg(getFeatures(x_test, 7), y_test, theta_3, lambda)

