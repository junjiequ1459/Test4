class Solution(object):
    def searchInsert(self, nums, target):
        high,low = len(nums)-1,0
        while low <= high:
            mid = low + (high - low)/2
            if nums[mid] == target:
                return mid
            elif nums[mid] < target:
                low = mid + 1
            else:
                high = mid -1
        return low
        