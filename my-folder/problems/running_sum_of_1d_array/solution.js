/**
 * @param {number[]} nums
 * @return {number[]}
 */
var runningSum = function(nums) {
    let resultArr = []
    let tempNum = 0

    for(let i in nums){
        tempNum += nums[i]
        resultArr.push(tempNum) 
    }
    return resultArr

};