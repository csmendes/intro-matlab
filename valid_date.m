%{
    Write a function called valid_date that takes three positive integer scalar 
    inputs year, month, day. If these three represent a valid date, return a 
    logical true, otherwise false. The name of the output argument is valid. 
    If any of the inputs is not a positive integer scalar, return false as well. 
    Note that every year that is exactly divisible by 4 is a leap year, except 
    for years that are exactly divisible by 100. However, years that are exactly 
    divisible by 400 are also leap years. For example, the year 1900 was not 
    leap year, but the year 2000 was. Note that your solution must not contain 
    any of the date related built-in MATLAB functions.		
%}

%{This implementations works fine. But has another way better to do so.%}

function valid = valid_date(year, month, day)
    
    if ~isscalar(year) || ~isscalar(month) || ~isscalar(year) && year > 0 ...
            && month > 0 && day > 0
        valid = false;
        return
    end
       
    %{
        os meses com 31 dias são: janeiro, março, maio, julho, agosto, outubro e dezembro. 
        Já os meses com 30 dias são: abril, junho, setembro e novembro.
    %}
    
    leap_year = false;
    
    if mod(year, 4) == 0
        if mod(year, 100) == 0
            if mod(year, 400) == 0
                leap_year = true;
            else
                leap_year = false;
            end
        else
            leap_year = true;
        end
    else
        leap_year = false;
    end
               
                
    if (month > 0 && month <= 12)
        if (leap_year == 1) 
            if (month == 2) 
                if (day > 0 && day <= 29)
                    valid = true;
                    return
                else
                    valid = false;
                    return
                end
             elseif (month == 1) || (month == 3) || (month == 5) || (month == 7) ...
                || (month == 8) || (month == 10) || (month == 12)

                if (day > 0 && day <=31)
                    valid = true;
                    return
                else
                    valid = false;
                    return
                end
            else
                if (day > 0 && day <=30)
                    valid = true;
                    return
                else
                    valid = false;
                    return
                end
            end
        else
            if (month == 2) 
                if (day > 0 && day <= 28)
                    valid = true;
                    return    
                else
                    valid = false;
                    return
                end            
            elseif (month == 1) || (month == 3) || (month == 5) || (month == 7) ...
                || (month == 8) || (month == 10) || (month == 12)

                if (day > 0 && day <=31)
                    valid = true;
                    return
                else
                    valid = false;
                    return
                end
            else
                if (day > 0 && day <=30)
                    valid = true;
                    return
                else
                    valid = false;
                    return
                end
            end
        end
    else
        valid = false;
    end
        
end

 