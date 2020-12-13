mu = 0;
variance = 25;
sigma = sqrt(variance);
pd = makedist('Normal','mu',mu,'sigma',sigma);

q2a = cdf(pd,15);
q2b = 1 - cdf(pd,25);

answer_q2a = ['The probability that John arrives before 8 p.m. is ', num2str(q2a)];
answer_q2b = ['The probability that John arrives after 8:10 p.m. is ', num2str(q2b)];
disp(answer_q2a);
disp(answer_q2b);
