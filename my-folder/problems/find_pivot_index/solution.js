/**
 * @param {number[]} nums
 * @return {number}
 */
function pivotIndex(nums) {
    let left = 0
    let right = nums.reduce((a,b)=> a+b,0)

    for(let i in nums){
        left += nums[i]
        if(left !== right){
            right -= nums[i]
        }else{
            return i
        }
    }
    return -1

}