% Ivan Wang 501086429

% Problem B.2

p = @(t) 1.0.*((t>=0)&(t<1));
t = (-1:0.01:2); 

r = @(t) t.*p(t); % Calculate r(t) = tp(t)

% Create figure for r(t)
figure;
plot(t,r(t)); % Plot r(t)

xlabel('t');
ylabel('r(t)');
grid;
title('Plot of r(t) = tp(t)');
legend('r(t)');


% Create figure for n(t)
figure;
n = @(t) r(t) + r(-t + 2); % Calculate n(t) = r(t) + r(-t + 2)
plot(t,n(t)); % Plot n(t)

xlabel('t');
ylabel('n(t)');
grid;
title('Plot of n(t) = r(t) + r(-t + 2)');
legend('n(t)');
