# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
  counts = {}
  nums.each do |num|
    if counts[num]
      counts[num] += 1
    else
      counts[num] = 1
    end
  end

  result = []
  max_count = counts.values.max

  while max_count > 0 && k > 0
    counts.each do |key,value|
      if value == max_count
        result << key
        k -= 1
        break if k == 0
        end
    end
    max_count -= 1 
  end
result
end
