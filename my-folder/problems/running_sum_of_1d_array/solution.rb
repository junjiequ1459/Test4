# @param {Integer[]} nums
# @return {Integer[]}
def running_sum(nums)
    result = []
    temp = 0
    nums.each do |num|
        temp += num
        result << temp
    end
    result
end