/**
 * @param {number[]} nums
 * @return {number[]}
 */
var runningSum = function(nums) {
    temp_var = 0
    result_arr = []
    
    for(var i =0;i<nums.length;i++){
        temp_var += nums[i]
        result_arr.push(temp_var)
    }
    return result_arr
    
};