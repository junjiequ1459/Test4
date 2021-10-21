class Solution(object):
    def searchInsert(self, nums, target):
        low,high = 0, len(nums)-1
        
        while high >= low:
            mid = (high+low)//2
            if nums[mid] == target:
                return mid
            elif nums[mid] < target:
                low = mid+1
            else:
                high = mid -1
        return low
        
    
    
    
        """
        :type nums: List[int]
        :type target: int
        :rtype: int
        """
        