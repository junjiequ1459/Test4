def two_sum(nums, target)

    hash = {}


    nums.each_with_index do |ele,i|
        comp = target - ele

        if hash[comp]
            return [hash[comp],i]
        else
            hash[ele] = i
        end
    end

end
