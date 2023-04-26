# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
    obj = {}

    nums.each do |ele|
    if obj[ele]
        return true
    else
        obj[ele] = 1
    end
    end

    false
end