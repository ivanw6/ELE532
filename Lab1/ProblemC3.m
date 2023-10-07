% Ivan Wang 501086429

% Problem C3

u = @(t) 1.0.*(t>=0); % Calculate u(t)

t = (0:0.01:4)';
T = t*ones(1,11); % Create Time Matrix

% a = alpha
for a = 1:2:7 % Creates a vector [1,3,5,7]
    % convert t into T multiplied by the diag(a) for exp
    % convert t into T for others
    sa = exp(-2*T*diag(a)).*exp(-1*T*diag(a)).*cos(4*pi*T).*u(T); % Calculate sa(t)
    plot(t,sa); % Plot sa(t)

    xlabel('t');
    ylabel('sa(t)');

    hold on; % Holds each graph until loop is complete then plots in one figure
end

grid;
title('Plot of sa(t) for alpha = [1,3,5,7]');
legend('alpha = 1', 'alpha = 3', 'alpha = 5', 'alpha = 7');


% Problem C.4
disp(size(sa))