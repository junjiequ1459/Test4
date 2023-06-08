# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
sorted_nums = nums.sort

(0...sorted_nums.length-1).each do |i|
    if sorted_nums[i] == sorted_nums[i+1]
        return true
    end
end
false
end