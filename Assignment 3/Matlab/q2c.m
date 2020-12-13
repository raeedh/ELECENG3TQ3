X = makedist('Normal','mu',0,'sigma',1);
Y = makedist('Normal','mu',0,'sigma',1);

success_given = 0; success = 0; num_trials = 5000000;
for i = 1:num_trials
   X_num = random(X); Y_num = random(Y);
   U = 2*X_num + Y_num; V = -Y_num;
   if (U > 1)
      success_given = success_given + 1;
      if (V < -3)
          success = success + 1;
      end
   end
end

result = success/success_given;
disp(result);