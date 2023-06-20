def two_sum(nums, target)
hash = {}

nums.each_with_index do |num,i|
complement = target - num
if hash[complement]
    return [hash[complement],i]
else
    hash[num] = i
end
end
end
