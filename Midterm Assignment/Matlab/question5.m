train1 = makedist('Uniform','Lower',0,'Upper',30*60);
train2 = makedist('Uniform','Lower',0,'Upper',30*60);
num_trials = 1000000; avoided = 0;

for i = 1:num_trials
    if abs(random(train1)-random(train2)) > 5
        avoided = avoided + 1;
    end
end

prob_avoided = avoided/num_trials;
answer = "The probability that collision will be avoided is " + prob_avoided + ".";
disp(answer);