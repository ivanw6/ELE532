% Ivan Wang 501086429

% Problem C.2

% From Problem C.1
f = @(t) exp(-2.*t).*cos(4*pi*t); % Calculate f(t)
u = @(t) 1.0.*(t>=0); % Calculate u(t)
g = @(t) f(t).*u(t); % Calculate g(t)


s = @(t) g(t+1); % Calculate s(t)
t = (-2:0.01:4);

plot(t,s(t)); % Plot of s(t)

xlabel('t');
ylabel('s(t)');
grid;
title('Plot of s(t) = g(t+1)');
legend('s(t)');