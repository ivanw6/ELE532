% Ivan Wang 501086429

% Problem A.1
f = @(t) exp(-t).*cos(2*pi*t);

% Create the first figure (Figure 1.46)
figure;
t1 = (-2:2);
plot(t1, f(t1)); % Plot the first graph

%f(t1)
%t1

xlabel('t');
ylabel('f(t)');
grid;
title('Figure 1.46');
legend('Figure 1.46');

% Create the second figure (Figure 1.47)
figure;
t2 = (-2:0.01:2);
plot(t2, f(t2)); % Plot the second graph

xlabel('t');
ylabel('f(t)');
grid;
title('Figure 1.47');
legend('figure 1.47');
