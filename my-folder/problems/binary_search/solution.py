class Solution(object):
    def search(self, nums, target):
        
        high,low = len(nums)-1,0
        if target in nums: 
            while low <= high:
                mid = (high+low) // 2
                if nums[mid] == target:
                    return mid
                elif nums[mid] < target:
                    low = mid + 1
                else:
                    high = mid -1
        else:
            return -1
        