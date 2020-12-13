mu = 20;
cdf_15 = 1-0.21186;

sigma = 0.0001;
while 1
    pd = makedist('Normal','mu',mu,'sigma',sigma);
    if abs((1-cdf(pd,15))-cdf_15) < 0.00001
        break;
    end
    sigma = sigma + 0.0001;
end

pd = makedist('Normal','mu',mu,'sigma',sigma);
prob = 1-cdf(pd,10);
answer = "The probability  that  randomly  chosenpatient will wait at least 10 minutes is " + prob + ".";
disp(answer);