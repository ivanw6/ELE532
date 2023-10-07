% Ivan Wang 501086429

% Problem B3

p = @(t) 1.0.*((t>=0)&(t<1));
t = (-5:0.01:5); 

r = @(t) t.*p(t); % Calculate r(t) = tp(t)
n = @(t) r(t) + r(-t + 2); % Calculate n(t) = r(t) + r(-t + 2)

n1 = @(t) n(0.5.*t); % Calculate n1(t) = n((1/2)t)
n2 = @(t) n1(t+0.5); % Calculate n2(t) = n1(t+(1/2))

plot(t,n1(t)); % Plot n1(t)

hold on;

plot(t,n2(t)); % Plot n2(t)

xlabel('t');
ylabel('n1(t) & n2(t)');
grid;
title('Plot of n1(t) = n((1/2)t) & n2(t) = n(t+(1/2))');
legend('n1(t)','n2(t)');

