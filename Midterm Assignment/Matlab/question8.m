eng_dist = makedist('Exponential','mu',5);
ss_dist = makedist('Exponential','mu',10);
num_trials = 100000; A = 0; B = 0; C = 0;
eng_arrival_times = zeros(1,200);
ss_arrival_times = zeros(1,200);

for i = 1:num_trials
    for j = 1:200
        eng_arrival_times(j) = random(eng_dist);
        ss_arrival_times(j) = random(ss_dist);
    end
    
    if min(eng_arrival_times) < min(ss_arrival_times)
        A = A + 1;
    end
    
    twenty_eng = sort(mink(eng_arrival_times,20));
    twenty_ss = sort(mink(ss_arrival_times,20));
    eng_front_row = 0; front_row_count = 0; k = 1; l = 1;
    while front_row_count < 20
        if twenty_eng(k) < twenty_ss(l)
           k = k + 1;
           eng_front_row = eng_front_row + 1;
        else
           l = l + 1; 
        end
        if eng_front_row > 10
            B = B + 1;
            break;
        end
        front_row_count = front_row_count + 1;
    end 
    
    if max(mink(eng_arrival_times,20)) < min(ss_arrival_times)
        C = C + 1;
    end
end

prob_A = A/num_trials; prob_B = B/num_trials; prob_C = C/num_trials;
answer_A = "The probability that the first student entering the lecture hall is an engineering student is " + prob_A + ".";
answer_B = "The probability that the number of engineering students in the first row is larger than the number of society students " + prob_B + ".";
answer_C = "The probability that ALL the seats in the front row will be occupied by engineering students is " + prob_C + ".";
disp(answer_A); disp(answer_B); disp(answer_C);