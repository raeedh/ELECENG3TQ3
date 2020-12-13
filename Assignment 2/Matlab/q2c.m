pdJohn = makedist('Normal','mu',0,'sigma',5);
pdSusan = makedist('Normal','mu',25,'sigma',3);

counter = 0;
arrivedBefore = 0;
for i = 1:1000000
   JohnTime = random(pdJohn);
   SusanTime = random(pdSusan);
   if JohnTime < SusanTime
        arrivedBefore = arrivedBefore + 1;
   end
   counter = counter + 1;
end

answer = ['The probability that John arrives before Susan is ', num2str(arrivedBefore/counter)];
disp(answer)