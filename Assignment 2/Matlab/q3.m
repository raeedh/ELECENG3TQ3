 x = [1 3];
mu = 4;

max = 0;
max_sigma = 0;
for sigma = 0.001:0.001:10
    pd = makedist('Normal','mu',mu,'sigma',sigma);
    y = cdf(pd,x);
    if (y(2)-y(1) > max)
        max = y(2)-y(1);
        max_sigma = sigma;
    end
end

answer = ['The value of sigma and sigma^2 that maximizes P(1 <= X <= 3) for a Gaussian random variable with mean 4 are ', num2str(max_sigma),' and ', num2str(max_sigma^2)];
disp(answer);
