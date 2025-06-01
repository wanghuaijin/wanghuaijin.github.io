path = '/Users/wanghuaijin/Documents/VuePress-Hope/blog/src/.vuepress/public/assets/numDEs/status/';
T1 = readtable([path,'homework1.xls'],...
    'VariableNamingRule','preserve');

T = T1(1:70,:);

for row = 1:70
    b = T{row,6:19};
    score = 0;
    tscore = 0;
    for i = 1:length(b)
        num = str2num(b{i}(2:end));
        total = str2num(T1{71,i+5}{1});
        tscore = tscore + total;
        
        if ~isempty(b{i}) && b{i}(1) == '√'
            if isscalar(num)
                score = score + num;
            else
                if b{i}(end)=='补'
                    score = score + 0.6*total;
                else
                    score = score + 1*total;
                end
            end
        end
    end
    
    ratio = round(score/tscore * 100);
    T{row,26} = {[num2str(ratio),'%']};
end
    
for col = 12:19
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