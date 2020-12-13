num_students = 30000;
mu = 86; sigma = 8;
pd = makedist('Normal','mu',mu,'sigma',sigma);
prob = 1-cdf(pd,90);
estimate = prob*num_students;
answer = "The number of students whose weight is at least 90kg is " + estimate + ".";
disp(answer);