
figure
subplot(2, 2, 1);
plot(x, y, 'o');
X_train = getFeatures(x_train, 1);

[theta_1, J_history, T_history] = gradientDescent(X_train, y_train, zeros(2, 1), 0.8, 10000);
subplot(2, 2, 2);
plot(T_history, 'o');

subplot(2, 2, 3);
plot(J_history, 'o');

subplot(2, 2, 4);
syms x1;
x1 = min(x):0.001:max(x);
plot(x1, subs(fittedFunction(theta_1)));
getFeatures(x_train, 1)


computeCost(getFeatures(x_train, 1), y_train, theta_1)
computeCost(getFeatures(x_eval, 1), y_eval, theta_1)
computeCost(getFeatures(x_test, 1), y_test, theta_1)


figure
subplot(2, 2, 1);
plot(x, y, 'o');
X_train = getFeatures(x_train, 3);

[theta_2, J_history, T_history] = gradientDescent(X_train, y_train, zeros(4, 1), 0.8, 10000);
subplot(2, 2, 2);
plot(T_history, 'o');

subplot(2, 2, 3);
plot(J_history, 'o');

subplot(2, 2, 4);
syms x1;
x1 = min(x):0.001:max(x);
plot(x1, subs(fittedFunction(theta_2)));

computeCost(getFeatures(x_train, 3), y_train, theta_2)
computeCost(getFeatures(x_eval, 3), y_eval, theta_2)
computeCost(getFeatures(x_test, 3), y_test, theta_2)

figure
subplot(2, 2, 1);
plot(x, y, 'o');
X_train = getFeatures(x_train, 5);

[theta_3, J_history, T_history] = gradientDescent(X_train, y_train, zeros(6, 1), 0.8, 100000);
subplot(2, 2, 2);
plot(T_history, 'o');

subplot(2, 2, 3);
plot(J_history, 'o');

subplot(2, 2, 4);
syms x1;
x1 = min(x):0.001:max(x);
plot(x1, subs(fittedFunction(theta_3)));

computeCost(getFeatures(x_train, 5), y_train, theta_3)
computeCost(getFeatures(x_eval, 5), y_eval, theta_3)
computeCost(getFeatures(x_test, 5), y_test, theta_3)


figure
subplot(2, 2, 1);
plot(x, y, 'o');
X_train = getFeatures(x_train, 7);

[theta_4, J_history, T_history] = gradientDescent(X_train, y_train, zeros(8, 1), 0.8, 100000);
subplot(2, 2, 2);
plot(T_history, 'o');

subplot(2, 2, 3);
plot(J_history, 'o');

subplot(2, 2, 4);
syms x1;
x1 = min(x):0.001:max(x);
plot(x1, subs(fittedFunction(theta_4)));

computeCost(getFeatures(x_train, 7), y_train, theta_4)
computeCost(getFeatures(x_eval, 7), y_eval, theta_4)
computeCost(getFeatures(x_test, 7), y_test, theta_4)
