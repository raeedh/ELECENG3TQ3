X = makedist('Uniform','Lower',0,'Upper',2);
Y = makedist('Uniform','Lower',0,'Upper',4);
num_trials = 10000000; A = 0; B = 0;

for i = 1:num_trials
    X_rand = random(X);
    Y_rand = random(Y);
   if (X_rand + Y_rand) > 1
       A = A + 1;
   end
   if ((X_rand + Y_rand) > 1) && (Y_rand > X_rand)
       B = B + 1;
   end
end

prob_A = A/num_trials; prob_B = B/num_trials;
answer_A = "The probability that X + Y > 1 is " + prob_A + ".";
answer_B = "The probability that X + Y > 1 and Y > X is " + prob_B + ".";
disp(answer_A);
disp(answer_B);