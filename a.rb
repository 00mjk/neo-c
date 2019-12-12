  param_line = "/abc/g"
  n = 0;

  if param_line[n] == "/"
      n = n + 1
  end

  str = ""

  ignore_case = false;
  multiline = false;
  global = false;
  extended = false;
  dotall = false;
  anchored = false;
  dollar_endonly = false;
  ungreedy = false;

  while(n < param_line.length()) do
      c = param_line[n];

      if c == "/"
          n = n + 1;

          while(n < param_line.length()) do
              c = param_line[n];

              if c == "i"
                  ignore_case = true;
              elsif c == "m"
                  multiline = true;
              elsif c == "g"
                  global = true;
              elsif c == "s"
                  dotall = true;
              elsif c == "A"
                  anchoared = true;
              elsif c == "D"
                  dollar_endonly = true;
              elsif c == "U"
                  ungreedy = true;
              elsif c == "x"
                  extended = true;
              end

              n = n + 1;
          end
      else
          str = str + c
      end

      n = n + 1;
  end

  puts("regex(\"#{str}\", #{ignore_case}, #{multiline}, #{global}, #{extended}, #{dotall}, #{anchored}, #{dollar_endonly}, #{ungreedy});");
