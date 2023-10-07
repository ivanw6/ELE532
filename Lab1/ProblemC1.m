% Ivan Wang 501086429

% Problem C1

f = @(t) exp(-2.*t).*cos(4*pi*t); % Calculate f(t)
t = (-2:0.01:2);
u = @(t) 1.0.*(t>=0); % Calculate u(t)

g = @(t) f(t).*u(t); % Calculate g(t)

plot(t,g(t)); % Plot of g(t)

xlabel('t');
ylabel('g(t)');
grid;
title('Plot of g(t) = f(t)u(t)');
legend('g(t)');


