n = 10;

xi = linspace(-1,1,10);
yi = [3 2 2 1 0 -3 -4 1 2 4];

plot(xi,yi,'o','MarkerSize',10,'MarkerFaceColor','g','MarkerEdgeColor','k')

%===========================
x = linspace(-1,1,1000);
% y = ?
% Interpolate to find value of y at x using following 
% interpolation techniques

hold on
y = zeros(size(x));


% 1. midpoint interpolation
y = zeros(size(x));


for i = 1:N-1
    
    xmid = (xi(i) + xi(i+1)) / 2;
    for j = 1:length(x)
        if x(j) > xi(i) && x(j) <= xmid
            y(j) = yi(i);
        elseif x(j) > xmid && x(j) <= xi(i+1)
            y(j) = yi(i+1);
        end
    end
end

plot(x, y, 'm', 'LineWidth', 1.5);

xlabel('x');
ylabel('y');
axis([-1 1 -5 5])
title('Midpoint-based Interpolation');

legend('Original Points', 'Midpoint-based Interpolation');

hold off



% 2. linear interpolation

% 3. polynomial interpolation