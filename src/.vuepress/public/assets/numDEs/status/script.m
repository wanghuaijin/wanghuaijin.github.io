clc;
path = '/Users/wanghuaijin/Documents/VuePress-Hope/blog/src/.vuepress/public/assets/numDEs/status/';

%% Attendence rate
A1 = readtable([path,'2024-2025_2_0_19020240157508.xls'],...
    'VariableNamingRule','preserve');
A = A1(1:72,:);
A.Properties.VariableNames{24} = '出勤次数';
A.Properties.VariableNames{25} = '出勤率';
A{72,2} = {'表中符号说明：旷课用“Ｏ”表示，迟到用“Ø”表示，请假“⊕”用表示，正常出勤的用“√”表示，早退用△表示，其中如果符号前面出现数字表示签到次数如2Ｏ代表旷课2次'};

for row = 1 : 70
    a = A{row,6:21};
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
T1 = T1(:, [1:5,6:12,14:21,23:26]);

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
    T{row,24} = {[num2str(ratio),'%']};
    
end
    
for col = 6:20
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


%% Continuous Evaluation
HW1 = readtable([path,'homework1.xls'],...
    'VariableNamingRule','preserve');
HW = readtable([path,'homework.xlsx'],...
    'VariableNamingRule','preserve');
AT = readtable([path,'attendance.xlsx'],...
    'VariableNamingRule','preserve');
EV = HW1(1:72,1:9);
EV.Properties.VariableNames{6} = '平时作业分数';
EV.Properties.VariableNames{7} = '上机报告1';
EV.Properties.VariableNames{8} = '上机报告2';
EV.Properties.VariableNames{9} = '出勤率';
for j = 2 : 9
    EV{71,j} = {''};
end
EV{72,2} = {'表中符号说明：未提交上机报告用“Ｏ”表示'};

% score, report1, and report2
for row = 1 : 70
    sc = HW{row, 24};
    rep1 = HW1{row, 13};
    rep2 = HW1{row, 22};
    
    EV{row,6} = sc;
    if strcmp(rep1{1}(1),'√')
        EV{row,7} = {[strtrim(rep1{1}(2:end)),'%']};
    else
        EV{row,7} = rep1;
    end
    
    if strcmp(rep2{1}(1),'√')
        EV{row,8} = {[strtrim(rep2{1}(2:end)),'%']};
    else
        EV{row,8} = rep2;
    end
end

% attendance
for row = 1 : 70
   EV{row, 9} = {'0%'};
   name1 = strtrim(EV{row,3}{1}); 
   name2 = strtrim(AT{row,3}{1});
   if strcmp(name1, name2)
       EV{row, 9} = AT{row,25};
   else
       disp([str2num(row),' ',name1,'\n']);
       i = 1;
       while i <= 70
           name2 = strtrim(AT{i,3}{1});
           if strcmp(name1, name2)
              EV{row, 9} = AT{i,25};
              i = 1000;
           else 
              i = i+1;
           end
       end
   end
end
writetable(EV, [path,'evaluation.xlsx']);
