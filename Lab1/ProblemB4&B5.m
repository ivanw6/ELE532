% Ivan Wang 501086429

% Problem B4

p = @(t) 1.0.*((t>=0)&(t<1));
t = (-5:0.01:5); 

r = @(t) t.*p(t); % Calculate r(t) = tp(t)
n = @(t) r(t) + r(-t + 2); % Calculate n(t) = r(t) + r(-t + 2)

n1 = @(t) n(0.5.*t); % Calculate n1(t) = n((1/2)t)
n2 = @(t) n1(t+0.5); % Calculate n2(t) = n1(t+(1/2))

n3 = @(t) n(t+0.25); % Calculate n3(t) = n(t+(1/4))
n4 = @(t) n3(0.5.*t); % Calculate n4(t) = n3((1/2)t);

plot(t,n3(t)); % Plot of n3(t)

hold on;

plot(t,n4(t)); % Plot of n4(t)

xlabel('t');
ylabel('n3(t) & n4(t)');
grid;
title('Plot of n3(t) = n(t+(1/4)) & n4(t) = n3((1/2)t)');
legend('n3(t)','n4(t)');


% Problem B5
% Comparing n2(t) and n4(t)
figure;
plot(t,n2(t));
hold on;
plot(t,n4(t));

xlabel('t');
ylabel('n2(t) & n4(t)');
grid;
legend('n2(t)', 'n4(t)');
title('Plot of n2(t) & n4(t)');