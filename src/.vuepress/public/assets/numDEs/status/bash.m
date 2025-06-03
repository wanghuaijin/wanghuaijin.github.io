path = '/Users/wanghuaijin/Documents/VuePress-Hope/blog/src/.vuepress/public/assets/numDEs/status/';

%% Attendence rate
A1 = readtable([path,'2024-2025_2_0_19020240157508.xls'],...
    'VariableNamingRule','preserve');
A = A1(1:72,:);
A.Properties.VariableNames{24} = '出勤次数';
A.Properties.VariableNames{25} = '出勤率';
A{72,2} = {'表中符号说明：旷课用“Ｏ”表示，迟到用“Ø”表示，请假“⊕”用表示，正常出勤的用“√”表示，早退用△表示，其中如果符号前面出现数字表示签到次数如2Ｏ代表旷课2次'};

for row = 1 : 70
    a = A{row,6:20};
    num = 0;
    for i = 1 : length(a)
        str = a{i};
        for j = 1 : length(str)
           ch = str(j);
           if strcmp(ch,'√') || strcmp(ch,'⊕') || strcmp(ch,'Ø')
               if j == 1
                   num = num + 1;
               else
                   if isstrprop(str(j-1),'digit')
                       num = num + str2num(str(j-1));
                   else
                       num = num+1;
                   end
               end

           end
        end
    end
    A{row,24} = {num2str(num)};
    
end

total = str2num(A{70,24}{1});
for row = 1 : 70
    ratio = round(str2num(A{row,24}{1}) / total * 100);
    A{row,25} = {[num2str(ratio),'%']};
end

writetable(A, [path,'attendance.xlsx']);


%% Exercises scores
T1 = readtable([path,'homework1.xls'],...
    'VariableNamingRule','preserve');

T = T1(1:70,:);

for row = 1:70
    b = T{row,6:20};
    score = 0;
    tscore = 0;
    for i = 1:length(b)
        
        total = str2num(T1{71,i+5}{1});
        tscore = tscore + total;
        
        if ~isempty(b{i}) && b{i}(1) == '√'
            num = str2num(b{i}(2:end));
            
            if isscalar(num)
                score = score + num;
            else
                if b{i}(end)=='补'
                    score = score + 0.5*total;
                else
                    score = score + 1*total;
                end
            end
        end
    end
    
    ratio = round(score/tscore * 100);
    T{row,26} = {[num2str(ratio),'%']};
    
end
    
for col = 12:20
    a=T{1:70,col};
    for i = 1 : 70
        ch = a{i};
        if isempty(a{i})
            a{i} = 'Ｏ';
        else
            a{i} = a{i}(1);
        end
    end
    T{1:70,col} = a;
end
writetable(T, [path,'homework.xlsx']);


