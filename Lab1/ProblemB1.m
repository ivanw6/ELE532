% Ivan Wang 501086429

% Problem B.1

p = @(t) 1.0.*((t>=0)&(t<1));
t = (-1:0.01:2); 

plot(t,p(t)); % Plot of p(t) = u(t)-u(t-1)

xlabel('t'); 
ylabel('p(t) = u(t)-u(t-1)');
axis([-1 2 -.1 1.1]);
grid;
legend('p(t)=u(t)-u(t-1)');
title("Plot of Figure 1.50");
