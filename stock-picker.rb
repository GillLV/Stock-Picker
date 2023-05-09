days = [17,3,6,9,15,8,6,1,10]

def stock_picker(days)
    #the first element represents the best buy day and
    #the second element represents the best sell day
    best_days = [0,0]
    #use the first pair of days as our starting point to 
#   ensure we take a negitive max diff into account
    best_diff = days[1] - days[0];
    #loop over the possible buy days (can't buy on the last day)
    for i in  0..( days.length() - 2 )
        #For each buy day loop over possible sell days starting with
        #the day after the buy day and ending with the last day
        for j in (i+1)..(days.length() - 1)
            stock_diff = days[j] - days[i]
            if stock_diff > best_diff 
                best_diff = stock_diff
                best_days[0] = i
                best_days[1] = j
            end
        end
    end
    puts best_days
end

stock_picker(days)