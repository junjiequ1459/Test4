/**
 * @param {number[]} nums
 * @return {number[]}
 */
var runningSum = function(nums) {
    let sum = 0;
    let resultarr= []
    for(let i =0;i<nums.length;i++){
        sum+= nums[i]
        resultarr.push(sum)
    }
    return resultarr
};