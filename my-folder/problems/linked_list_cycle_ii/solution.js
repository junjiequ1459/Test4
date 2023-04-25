/**
 * Definition for singly-linked list.
 * function ListNode(val) {
 *     this.val = val;
 *     this.next = null;
 * }
 */

/**
 * @param {ListNode} head
 * @return {ListNode}
 */
var detectCycle = function(head) {

    let slow = head
    let fast = head
    let hascycle = false

    while(fast && fast.next){
        slow = slow.next
        fast = fast.next.next

        if (slow === fast){
            hascycle = true
            break;
        }
    }
        if (hascycle) {
        slow = head;

        while (slow !== fast) {
            slow = slow.next;
            fast = fast.next;
        }

        return slow;
    }

return null
    
};