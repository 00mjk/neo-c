params = [];
param = "";
dquort = false;
squort = false;
param_line = "1,  ',', \"2,\"  ,3";
n = 0;
while(n < param_line.length()) 
    c = param_line[n];
    n = n + 1;

    if (dquort || squort) && c == "\\"
        param.concat(c);
        
        c = param_line[n];
        n = n + 1;

        param.concat(c);
    elsif c == "\""
        param.concat(c);
        dquort = !dquort
    elsif c == "'"
        param.concat(c);
        squort = !squort
    elsif dquort || squort
        param.concat(c);
    elsif c == ","
        if param.length() > 0
            params.push(param);
            param = ""
        end
    else
        param.concat(c);
    end
end

if param.length() != 0
    params.push(param);
end

params.each do |str|
    puts str;
end
