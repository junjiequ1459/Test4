# @param {Integer[]} nums
# @return {Integer}
def pivot_index(nums)
    left = 0
    right = nums.reduce(:+)

    nums.each_with_index do |num,i|
        right -= num
        if left == right
            return i
        end
        left += num
    end
    -1
end