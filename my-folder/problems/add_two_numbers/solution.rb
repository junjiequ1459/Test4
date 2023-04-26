# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  carry = 0
  result = ListNode.new
  curr = result
  while l1 || l2
    x = l1&.val || 0
    y = l2&.val || 0
    sum = carry + x + y
    carry = sum / 10
    curr.next = ListNode.new(sum % 10)
    curr = curr.next
    l1 = l1&.next
    l2 = l2&.next
  end
  curr.next = ListNode.new(carry) if carry > 0
  result.next
end