N = 5;
x = linspace(1, 10, N);  
G = zeros(N, N); 

% Fill in the G matrix
for i = 1:N
    for j = 1:N
        G(i, j) = x(i)^(j-1); % (j-1) because we want powers from 0 to N
    end
end

% Inverse the G matrix to find c
c = inv(G) * y;



xi = linspace(min(x), max(x), 1000);


yi = zeros(size(xi)); 

for i = 1:length(xi)
    yi(i) = 0;  
    for j = 1:N
        yi(i) = yi(i) + c(j) * xi(i)^(j-1);  
    end
end

% Plot the results
figure;
plot(xi, yi, 'b-', 'LineWidth', 1.5);  % Plot the polynomial fit
hold on;
plot(x, y, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r');  % Plot the original data points
xlabel('x');
ylabel('y');
title('Polynomial Fit to Random x Values');
legend('Polynomial Fit', 'Original Data Points');
grid on;

% Display the results
disp('G matrix:');
disp(G);

disp('y vector:');
disp(y);

disp('Coefficient matrix c:');
disp(c);
