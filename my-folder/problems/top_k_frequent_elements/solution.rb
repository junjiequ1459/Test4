# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}



def top_k_frequent(nums, k)

    frequency = Hash.new(0)

    nums.each {|num| frequency[num] += 1}

    bucket = Array.new(nums.length + 1) {[]}

    frequency.each do |key,value|
    bucket[value] << key
    end

    result = []
    (bucket.length - 1).downto(0) do |i|
    result.concat(bucket[i])
    break if result.length >= k
    end
    result
end