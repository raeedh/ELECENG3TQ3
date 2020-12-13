mu = [76 94 70]; sigma = [6 4 5]; prob = [0.7 0.2 0.1];
pdA = makedist('Normal','mu',mu(1),'sigma',sigma(1));
pdB = makedist('Normal','mu',mu(2),'sigma',sigma(2));
pdC = makedist('Normal','mu',mu(3),'sigma',sigma(3));
 
probA = 1-cdf(pdA,108);
probB = 1-cdf(pdB,108);
probC = 1-cdf(pdC,108);

prob_pop = prob(1)*probA + prob(2)*probB + prob(3)*probC;

a = 0;
b = 0;
num_trials = 1000000;
for j = 1:num_trials
    for i = 1:1000000000
       x = rand;
       if x < prob_pop
           break;
       end
       a = a + 1;
    end
    if a == 0
        b = b + 1;
    end
    a = 0;
end

result = b/num_trials;
answer = ['The probability that no Haldurian is taller than 9 feet (108 inches) if the population of Haldurian is one billion is ', num2str(result)];
disp(answer);
