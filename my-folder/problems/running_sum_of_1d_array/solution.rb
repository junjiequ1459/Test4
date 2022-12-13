# @param {Integer[]} nums
# @return {Integer[]}
def running_sum(nums)
    result = []
    nums.each do |e|
        if result.empty?
        result << e
        else
        result << e + result[-1] 
        end
    end
    result
end