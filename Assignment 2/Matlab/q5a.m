mu = [76 94 70]; sigma = [6 4 5]; prob = [0.7 0.2 0.1];
pdA = makedist('Normal','mu',mu(1),'sigma',sigma(1));
pdB = makedist('Normal','mu',mu(2),'sigma',sigma(2));
pdC = makedist('Normal','mu',mu(3),'sigma',sigma(3));

probA = 1-cdf(pdA,96);
probB = 1-cdf(pdB,96);
probC = 1-cdf(pdC,96);

result = prob(1)*probA + prob(2)*probB + prob(3)*probC;

answer = ['The probability that a randomly chosen Haldurian is taller than 8 feet (96 inches) is ', num2str(result)];
disp(answer);