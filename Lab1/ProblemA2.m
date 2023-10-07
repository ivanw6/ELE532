% Ivan Wang 501086429

% Problem A.2

f = @(t) exp(-t);
t = (-2:2);

plot(t,f(t),'x-'); % Plot of e^(-t)

%f(t)
%t

xlabel('t');
ylabel('e^{-t}');
grid;
legend('e^{-t}');
title('Plot of e^{-t} for t = [-2, -1, 0, 1, 2]');