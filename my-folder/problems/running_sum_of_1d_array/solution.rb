# @param {Integer[]} nums
# @return {Integer[]}
def running_sum(nums)
    tempNum = 0
    resultArr = []

    nums.each do |ele|
        tempNum += ele
        resultArr << tempNum
    end
    
    resultArr
end