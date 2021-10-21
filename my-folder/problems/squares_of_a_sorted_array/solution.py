class Solution(object):
    def sortedSquares(self, nums):
        x,i,j= 0,0,len(nums)-1
        result = []
        while x <= len(nums)-1:
            if abs(nums[i]) > abs(nums[j]):
                result.append(nums[i]*nums[i])
                i+=1
                x+=1
            else:
                result.append(nums[j]*nums[j])
                j-=1
                x+=1
        return result[::-1]
        
        
        
        
        
        
        
        
        
        
        
        
        """
        :type nums: List[int]
        :rtype: List[int]
        """
        